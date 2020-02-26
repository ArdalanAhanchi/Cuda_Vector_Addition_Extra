cmake_minimum_required( VERSION 2.8 )

project( Cuda_Vector_Addition_Extra LANGUAGES CXX CUDA)

## Find the CUDA library.
find_package( CUDA REQUIRED )

## Use at least C++14.
## set (CMAKE_CXX_STANDARD 14)

## Make sure pthread is being used.
Set (CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-pthread")

## Setup the build directory.
set( EXECUTABLE_OUTPUT_PATH build )
add_executable( COMPILED_GLOBAL ./src/vec_addition_global.cu )
add_executable( COMPILED_REGISTERS ./src/vec_addition_registers.cu )

