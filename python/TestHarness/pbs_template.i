  [./<JOB_NAME>]
    test_name = <TEST_NAME>
    type = PBSJob
    chunks = 1
    place = free
    mpi_procs = <MIN_PARALLEL>
    moose_application = <EXECUTABLE>
    input_file = <INPUT>
    walltime = <WALLTIME>
    no_copy = <NO_COPY>
    copy_files = gold
    combine_streams = True
    cli_args = <CLI_ARGS>
  [../]
