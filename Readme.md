# Tensorflow Lite Micro

[![Status](https://storage.googleapis.com/tensorflow-kokoro-build-badges/tflite-micro.svg)](https://storage.googleapis.com/tensorflow-kokoro-build-badges/tflite-micro.html)

**Generated from Tensorflow v2.3.1**

A complete overview of Tensorflow Lite Micro.


Searching through the web, I found there are not that much information about it. So I create this project as a definitive place to go to research Tensorflow Lite Micro. This project is under active development. If you want to contribute please submit pull request or contact me directly at wniu(at)connect(dot)ust(dot)hk.

## Support Tree

This purpose of this project is for debugging TFLM and understanding it from source code. 

* Windows 10
    * Makefile with [MinGW](https://sourceforge.net/projects/mingw/) and [git bash](https://git-scm.com/download/win)
    * Qt Creator (QMake)
    * Visual Studio 16 2019

* Linux(Ubuntu 18.04)
    * Cmake + GNU make
    * Makefile
    * Qt Creator (QMake)
    * Visual Studio code

## Build instructions

### Makefile

Need support for bash. On windows you can try git bash [here](https://git-scm.com/download/win).

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

### QT

Simply install QT creator on your system. Check out official document [here](https://doc.qt.io/qt-5/gettingstarted.html).

Or run

```bash
qmake TFLM.pro
cd ${DEFAULT_QT_BUILD_DIR}
make -j
```

### Visual Studio

On windows system, install visual studio 2019 first. Checkout official documents [here](https://visualstudio.microsoft.com/).

Simply open solution file in `VS2019/TFLM`.

My software version info:
```
Microsoft Visual Studio Community 2019
Version 16.9.2
VisualStudio.16.Release/16.9.2+31112.23
Microsoft .NET Framework
Version 4.8.03752

Installed Version: Community

Visual C++ 2019   00435-60000-00000-AA010
Microsoft Visual C++ 2019
```

Or, open Visual Studio Developer command prompt run(WIP)

```bash
msbuild TFLM.sln
```

### Visual Studio Code

Install visual studio on linux or use Visual Studio Remote on your local machine.

Run build Task to build the project with make. (Default `ctrl+shift+b`)

Run start debugging to well debug. (Default `F5`)

## TODO

- [x] Isolating TFLM source from Tensorflow v2.3.1
- [x] Makefile
- [x] Cmake
- [x] QT
- [x] Visual Studio
- [x] Visual Studio Code
- [ ] WAF
- [ ] Documentation on directory 
- [ ] Documentation on TFLM
- [ ] UML Class diagram for Tensorflow Lite Flatbuffer model
- [ ] UML Class diagram for Tensorflow Lite Micro
- [ ] UML Sequence diagram for Tensorflow Lite Micro

## Reference

* TensorFlow Lite Micro: Embedded Machine Learning on TinyML Systems [Arxiv](https://arxiv.org/abs/2010.08678)

* TensorFlow Lite for Microcontrollers official [documents](https://www.tensorflow.org/lite/microcontrollers)

* Tensorflow [Github](https://github.com/tensorflow/tensorflow)

* Tensorflow Lite Micro [Github](https://github.com/tensorflow/tensorflow/tree/master/tensorflow/lite/micro)

## About me

Im ninn55. A grads student from HKUST you can find me [here](https://ninn55.github.io/).