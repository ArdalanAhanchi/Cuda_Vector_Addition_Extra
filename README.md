# Vector Addition in CUDA

## Introduction
This is a program which performs vector addition in CUDA, and also on the CPU.
It randomly generates numbers and populates the vectors, it can also print the
vectors, and find the residual vector. In addition to the regular implementation,
this version introduces loop unrolling in the main kernel.

## Compilation
Please make sure the CUDA toolkit, and CMake are installed first. To Compile:

    cmake .
    make

The output executables will be located at the build folder.

## Executables
* The COMPILED_GLOBAL is the regular vector addition in cuda.
* The COMPILED_REGISTERS is the 5-way loop-unrolled version.

## Usage
To use the program, there are a few command line arguments that need to be passed.
This usage example assumes that the executable name is COMPILED:

    ./COMPILED_X <Size_of_Vectors> <Number_of_Blocks> <Number_of_Threads> <Output_Mode>

* Size_of_Vectors   :  The number of items in each vector.
* Number_of_Blocks  :  The number of blocks used in the GPU.
* Number_of_Threads :  The number of threads used in each GPU block.
* Output_Mode       :  'q' for quiet, 'v' for verbose.
                       In quiet mode, only the timing results are shown.
                       In Verbose mode, the matrices and residual are also shown.

## Parser
Parser is a program which reads the output data of the program, parses it, and can filter out / print specific data. In this implementation, it calculates FLOPS and prints them out to stdout.
