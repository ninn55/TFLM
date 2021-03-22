# Tensorflow Lite Micro

Generated from Tensorflow v2.3.1

This purpose of this project is for debugging TFLM and understanding it from source code. 

## Support Tree

* Windows 10
    * Makefile with [MinGW](https://sourceforge.net/projects/mingw/)

* Linux(Ubuntu 18.04)
    * Cmake + GNU make
    * Makefile

## Build instructions

### Makefile

Build this project

```bash
make
```

Run this demo

```bash
./build/hello_world
```

### Cmake

```bash
mkdir build && cd build
```
Generate Makefile project with:

```bash
cmake -DCMAKE_BUILD_TYPE=Debug ..
```

Or

```bash
cmake -DCMAKE_BUILD_TYPE=Release ..
```
Build the project with:

```bash
make -j
```

Or to see more build command information

```bash
make -j VERBOSE=1
```