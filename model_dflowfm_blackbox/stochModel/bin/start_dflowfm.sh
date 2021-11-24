#! /bin/sh
#

# Modules
module purge
module load cmake costinit valgrind netcdf-c/intel netcdf-cxx/intel netcdf-fortran/intel compiler/intel/18.0.4 mpi/intelmpi/18.0.4

# Environment
export D3D_HOME="/p/home/cody/Delft_FM/v67088-1.2.4"
export LD_LIBRARY_PATH=${D3D_HOME}/src/lib:${D3D_HOME}/petsc-3.13.0/linux-intel/lib:${LD_LIBRARY_PATH}

MDU=$1

# Execute
cd ${RUN_DIR}
mpirun -np 36 ${D3D_HOME}/src/bin/dflowfm --autostartstop ${MDU}
