@ECHO OFF
cmake -DCMAKE_BUILD_TYPE=Debug -G "CodeBlocks - MinGW Makefiles" -B "cmake-build-debug" -S .
cmake --build "cmake-build-debug" -j 4