rm -r bin

mkdir bin
mkdir bin/cmake
mkdir bin/exec

cmake . -B bin/cmake
make -C bin/cmake
mv bin/cmake/Project bin/exec
clear
./bin/exec/Project