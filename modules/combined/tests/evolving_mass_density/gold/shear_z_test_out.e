CDF      
   0   
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_el_in_blk2        num_nod_per_el2       num_el_in_blk3        num_nod_per_el3       num_el_in_blk4        num_nod_per_el4       num_el_in_blk5        num_nod_per_el5       num_el_in_blk6        num_nod_per_el6       num_el_in_blk7        num_nod_per_el7       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_side_ss5      num_side_ss6      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_ns5       num_nod_ns6       num_nod_ns7       num_nod_ns8       num_nod_ns9       num_nod_ns10      num_nod_ns11      num_nod_ns12      num_nod_ns13      num_nod_ns14      num_nod_var       num_info  �   num_glo_var             api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         shear_z_test_out.e     maximum_name_length                 7   
time_whole                            ��   	eb_status                             �   eb_prop1               name      ID                 	ns_status         	              8      ,   ns_prop1      	         name      ID        8      d   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                      �      �   coordy                      �      L   coordz                      �      �   eb_names                       �      L   ns_names      	                �      4   ss_names      
                 �         
coor_names                         d      �   connect1                  	elem_type         HEX8                 0   elem_num_map                          P   connect2                  	elem_type         HEX8                 l   connect3                  	elem_type         HEX8                 �   connect4                  	elem_type         HEX8                 �   connect5                  	elem_type         HEX8                 �   connect6                  	elem_type         HEX8                 �   connect7                  	elem_type         HEX8                    elem_ss1                          ,   side_ss1                          0   elem_ss2                          4   side_ss2                          8   elem_ss3                          <   side_ss3                          @   elem_ss4                          D   side_ss4                          H   elem_ss5                          L   side_ss5                          P   elem_ss6                          T   side_ss6                          X   node_ns1                          \   node_ns2                           `   node_ns3      !                    p   node_ns4      "                    �   node_ns5      #                    �   node_ns6      $                    �   node_ns7      %                    �   node_ns8      &                    �   node_ns9      '                    �   	node_ns10         (                    �   	node_ns11         )                    �   	node_ns12         *                    �   	node_ns13         +                    �   	node_ns14         ,                    �   vals_nod_var1                          �      ��   vals_nod_var2                          �      �8   vals_nod_var3                          �      ��   name_nod_var      -                 d      �   info_records      .                }L      @   name_glo_var      /                 $      ��   vals_glo_var         /                    �8                                                                                             	         
                                                	   
         ?�      ?���l�D?�z�G�{        ?�      ?�7KƧ�?��Q�        ?�              ?�n��O�;?��;dZ�?�x���F        ?�333333?�              ?Ӆ�Q�?����+        ?�      ?�-V�?��
=p��?�                      ?�n��O�;?��S���?�      ?�      ?�ě��S�?�      ?�      ?��"��`B?�t�j~�?�      ?�      ?䛥�S��?�vȴ9X?�                      ?�n��O�;?ȓt�j~�?�p��
=q        ?����E�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  	   
                        
                                             	                                             	   
                                                                           	   
         	               
                        	   	   
         
      disp_x                           disp_y                           disp_z                            ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               shear_z_test.i                                                                                                                                                    ### Input File ###                                                                                                                                                [BCs]                                                                                                                                                               [./bot_x]                                                                          type                         = DirichletBC                                       boundary                     = 9                                                 time_periods                 =                                                   value                        = 0                                                 variable                     = disp_x                                          [../]                                                                                                                                                             [./bot_y]                                                                          type                         = DirichletBC                                       boundary                     = 9                                                 time_periods                 =                                                   value                        = 0                                                 variable                     = disp_y                                          [../]                                                                                                                                                             [./bot_z]                                                                          type                         = DirichletBC                                       boundary                     = 9                                                 time_periods                 =                                                   value                        = 0                                                 variable                     = disp_z                                          [../]                                                                                                                                                             [./top_x]                                                                          type                         = DirichletBC                                       boundary                     = 11                                                time_periods                 =                                                   value                        = 0                                                 variable                     = disp_x                                          [../]                                                                                                                                                             [./top_y]                                                                          type                         = DirichletBC                                       boundary                     = 11                                                time_periods                 =                                                   value                        = 0                                                 variable                     = disp_y                                          [../]                                                                                                                                                             [./top_z]                                                                          type                         = FunctionDirichletBC                               boundary                     = 11                                                function                     = rampConstant1                                     time_periods                 =                                                   variable                     = disp_z                                          [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      l_abs_step_tol                 = -1                                              l_max_its                      = 20                                              l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-10                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = '-snes_mf_operator -ksp_monitor'                petsc_options_iname            =                                                 petsc_options_value            =                                                 scheme                         = backward-euler                                  type                           = Transient                                       _mesh                          = 0x101f675f0                                     dt                             = 1                                               dtmax                          = 1e+30                                           dtmin                          = 0                                               end_time                       = 3                                               growth_factor                  = 2                                               n_startup_steps                = 0                                               num_steps                      = 3                                               predictor_scale                = 0                                               restart_file_base              =                                                 ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               sync_times                     = -1                                              time_dt                        =                                                 time_period_ends               =                                                 time_period_starts             =                                                 time_periods                   =                                                 time_t                         =                                                 trans_ss_check                 = 0                                             []                                                                                                                                                                [Functions]                                                                                                                                                         [./rampConstant1]                                                                  type                         = PiecewiseLinear                                   axis                         = 6                                                 scale_factor                 = 1                                                 x                            = '0 1 2 3'                                         y                            = '0 0.25 0 -0.25'                                [../]                                                                          []                                                                                                                                                                [Materials]                                                                                                                                                         [./density]                                                                        type                         = Density                                           block                        = '1 2 3 4 5 6 7'                                   density                      = 1                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                          [../]                                                                                                                                                             [./stiffStuff1]                                                                    type                         = Elastic                                           active_crack_planes          =                                                   appended_property_name       =                                                   block                        = 1                                                 bulk_modulus                 = 2.13815e-314                                      cracking_release             = abrupt                                            cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            formulation                  =                                                   increment_calculation        = RashidApprox                                      lambda                       = 2.13815e-314                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0                                                 shear_modulus                = 2.13815e-314                                      temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 1e+06                                           [../]                                                                                                                                                             [./stiffStuff2]                                                                    type                         = Elastic                                           active_crack_planes          =                                                   appended_property_name       =                                                   block                        = 2                                                 bulk_modulus                 = 2.96439e-323                                      cracking_release             = abrupt                                            cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            formulation                  =                                                   increment_calculation        = RashidApprox                                      lambda                       = 2.96439e-323                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0                                                 shear_modulus                = 2.96439e-323                                      temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 1e+06                                           [../]                                                                                                                                                             [./stiffStuff3]                                                                    type                         = Elastic                                           active_crack_planes          =                                                   appended_property_name       =                                                   block                        = 3                                                 bulk_modulus                 = 2.96439e-323                                      cracking_release             = abrupt                                            cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            formulation                  =                                                   increment_calculation        = RashidApprox                                      lambda                       = 2.96439e-323                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0                                                 shear_modulus                = 2.96439e-323                                      temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 1e+06                                           [../]                                                                                                                                                             [./stiffStuff4]                                                                    type                         = Elastic                                           active_crack_planes          =                                                   appended_property_name       =                                                   block                        = 4                                                 bulk_modulus                 = 2.96439e-323                                      cracking_release             = abrupt                                            cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            formulation                  =                                                   increment_calculation        = RashidApprox                                      lambda                       = 2.96439e-323                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0                                                 shear_modulus                = 2.96439e-323                                      temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 1e+06                                           [../]                                                                                                                                                             [./stiffStuff5]                                                                    type                         = Elastic                                           active_crack_planes          =                                                   appended_property_name       =                                                   block                        = 5                                                 bulk_modulus                 = 2.96439e-323                                      cracking_release             = abrupt                                            cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            formulation                  =                                                   increment_calculation        = RashidApprox                                      lambda                       = 2.96439e-323                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0                                                 shear_modulus                = 2.96439e-323                                      temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 1e+06                                           [../]                                                                                                                                                             [./stiffStuff6]                                                                    type                         = Elastic                                           active_crack_planes          =                                                   appended_property_name       =                                                   block                        = 6                                                 bulk_modulus                 = 2.96439e-323                                      cracking_release             = abrupt                                            cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            formulation                  =                                                   increment_calculation        = RashidApprox                                      lambda                       = 2.96439e-323                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0                                                 shear_modulus                = 2.96439e-323                                      temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 1e+06                                           [../]                                                                                                                                                             [./stiffStuff7]                                                                    type                         = Elastic                                           active_crack_planes          =                                                   appended_property_name       =                                                   block                        = 7                                                 bulk_modulus                 = 2.96439e-323                                      cracking_release             = abrupt                                            cracking_stress              = 0                                                 disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            formulation                  =                                                   increment_calculation        = RashidApprox                                      lambda                       = 2.96439e-323                                      large_strain                 = 0                                                 max_cracks                   = 3                                                 poissons_ratio               = 0                                                 shear_modulus                = 2.96439e-323                                      temp                         =                                                   thermal_expansion            = 0                                                 youngs_modulus               = 1e+06                                           [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = 'disp_x disp_y disp_z'                          uniform_refine                 = 0                                               displacements                  = 'disp_x disp_y disp_z'                          file                           = elastic_patch.e                                 ghosted_boundaries             =                                                 ghosted_boundaries_inflation   =                                                 nemesis                        = 0                                               patch_size                     = 40                                              skip_partitioning              = 0                                               type                           = MooseMesh                                       block_id                       =                                                 block_name                     =                                                 boundary_id                    =                                                 boundary_name                  =                                                 centroid_partitioner_direction =                                                 construct_side_list_from_node_list = 0                                           partitioner                    =                                                 second_order                   = 0                                               _dimension                     = 1                                             []                                                                                                                                                                [Output]                                                                           elemental_as_nodal             = 1                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               file_base                      = shear_z_test_out                                gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 0                                               nemesis                        = 0                                               num_restart_files              = 0                                               output_displaced               = 0                                               output_initial                 = 1                                               output_solution_history        = 0                                               output_variables               =                                                 perf_log                       = 1                                               postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               xda                            = 0                                             []                                                                                                                                                                [Postprocessors]                                                                                                                                                    [./Mass_Density]                                                                   type                         = Mass                                              block                        = ANY_BLOCK_ID                                      execute_on                   = timestep                                          output                       = both                                              variable                     = disp_x                                          [../]                                                                          []                                                                                                                                                                [SolidMechanics]                                                                                                                                                    [./solid]                                                                          appended_property_name       =                                                   disp_r                       =                                                   disp_x                       = disp_x                                            disp_y                       = disp_y                                            disp_z                       = disp_z                                            temp                         =                                                   use_displaced_mesh           = 1                                               [../]                                                                          []                                                                                                                                                                [Variables]                                                                                                                                                         [./disp_x]                                                                         block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                                                                                                             [./disp_y]                                                                         block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                                                                                                             [./disp_z]                                                                         block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                          []                                                                               Mass_Density                                                                                                                                                                                                                                                                                                                                                                                                                                ?�     ?�              ���˗X  <��X                   <���b(  ����	�                          <�;3�  <z樾�  <��{J          <���':                  ���0�  <�"U�                   <�6�   ������@                         ��+��  <�%��  <�dhV�          ���M                  ?���Q�?����+        ?�������?�-V�?��
=p��?�������                ?�n��O�4?��S���?�������?�������?�ě��S�?�������?�     @               <�E�f�  <�,�<�                  �����   <�_B	�                          <�";��  <��6n�  <���D          <��u�                  <�	O�� <�F�@                  ��QT-�  <��{"n                          �����  <π!�\  <�+C�0          �ź]|                  ���.��  ��E��P          <����L  <��8  <��yP  <����L                  <�	�a   <�5*p  <�3#  <����L  ���3��  <����L  ?�     @              �~-v  <�����                  <�U���  ��ɳ<`                          <��%   ��wR�P  <��MK�          ��l���                  ��o��  �t��l@                  �zZ<��  <y�� �                          �yr�&�  �q�r�@  ��w&�P          <��&P�                  ����Q놿����+        ��     ��-V����
=p���                     ��n��O�<���S�����     ��     ��ě��T��     ?�     