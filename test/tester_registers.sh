#! /bin/bash
 
# Run the default configurations.
./build/COMPILED_REGISTERS 2097152 1 1 q
./build/COMPILED_REGISTERS 2097152 8 16 q
./build/COMPILED_REGISTERS 2097152 32768 1 q
./build/COMPILED_REGISTERS 2097152 32768 1024 q
./build/COMPILED_REGISTERS 16777216 32768 1024 q

exit 0;