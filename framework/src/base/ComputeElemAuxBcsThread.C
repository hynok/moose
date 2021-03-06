/****************************************************************/
/*               DO NOT MODIFY THIS HEADER                      */
/* MOOSE - Multiphysics Object Oriented Simulation Environment  */
/*                                                              */
/*           (c) 2010 Battelle Energy Alliance, LLC             */
/*                   ALL RIGHTS RESERVED                        */
/*                                                              */
/*          Prepared by Battelle Energy Alliance, LLC           */
/*            Under Contract No. DE-AC07-05ID14517              */
/*            With the U. S. Department of Energy               */
/*                                                              */
/*            See COPYRIGHT for full restrictions               */
/****************************************************************/

#include "ComputeElemAuxBcsThread.h"
#include "AuxiliarySystem.h"
#include "FEProblem.h"
#include "AuxKernel.h"

// libmesh includes
#include "libmesh/threads.h"

ComputeElemAuxBcsThread::ComputeElemAuxBcsThread(FEProblem & problem,
                                                 AuxiliarySystem & sys,
                                                 std::vector<AuxWarehouse> & auxs,
                                                 bool need_materials) :
    _problem(problem),
    _sys(sys),
    _auxs(auxs),
    _need_materials(need_materials)
{
}

// Splitting Constructor
ComputeElemAuxBcsThread::ComputeElemAuxBcsThread(ComputeElemAuxBcsThread & x, Threads::split /*split*/) :
    _problem(x._problem),
    _sys(x._sys),
    _auxs(x._auxs),
    _need_materials(x._need_materials)
{
}

void
ComputeElemAuxBcsThread::operator() (const ConstBndElemRange & range)
{
  ParallelUniqueId puid;
  _tid = puid.id;

  for (ConstBndElemRange::const_iterator elem_it = range.begin() ; elem_it != range.end(); ++elem_it)
  {
    const BndElement * belem = *elem_it;

    const Elem * elem = belem->_elem;
    unsigned short int side = belem->_side;
    BoundaryID boundary_id = belem->_bnd_id;

    if (elem->processor_id() == _problem.processor_id())
    {
      // prepare variables
      for (std::map<std::string, MooseVariable *>::iterator it = _sys._elem_vars[_tid].begin(); it != _sys._elem_vars[_tid].end(); ++it)
      {
        MooseVariable * var = it->second;
        var->prepareAux();
      }

      if (_auxs[_tid].elementalBCs(boundary_id).size() > 0)
      {
        _problem.prepare(elem, _tid);
        _problem.reinitElemFace(elem, side, boundary_id, _tid);

        if (_need_materials)
        {
          _problem.reinitMaterialsFace(elem->subdomain_id(), _tid);
          _problem.reinitMaterialsBoundary(boundary_id, _tid);
        }

        // Set the active boundary id so that BoundaryRestrictable::_boundary_id is correct
        _problem.setCurrentBoundaryID(boundary_id);

        const std::vector<AuxKernel*> & bcs = _auxs[_tid].elementalBCs(boundary_id);
        for (std::vector<AuxKernel*>::const_iterator element_bc_it = bcs.begin(); element_bc_it != bcs.end(); ++element_bc_it)
            (*element_bc_it)->compute();

        if (_need_materials)
          _problem.swapBackMaterialsFace(_tid);

        // Set active boundary id to invalid
        _problem.setCurrentBoundaryID(Moose::INVALID_BOUNDARY_ID);
      }

      // update the solution vector
      {
        Threads::spin_mutex::scoped_lock lock(Threads::spin_mtx);
        for (std::map<std::string, MooseVariable *>::iterator it = _sys._elem_vars[_tid].begin(); it != _sys._elem_vars[_tid].end(); ++it)
        {
          MooseVariable * var = it->second;
          var->insert(_sys.solution());
        }
      }
    }
  }
}

void
ComputeElemAuxBcsThread::join(const ComputeElemAuxBcsThread & /*y*/)
{
}
