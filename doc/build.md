# Build instructions

## Build on Supported platform

### Makefile

Inside the Makefile support for linux utility tool is needed on windows you can use this Makefile to build through [MinGW](https://sourceforge.net/projects/mingw/) and [git bash](https://git-scm.com/download/win). Or you can use [gow](https://github.com/bmatzelle/gow). There are two Makefile provided.

Build this project

```bash
make
```

or

```bash
make -f Makefile.plank
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

Simply install QT creator on your system. Check out official document [here](https://doc.qt.io/qt-5/gettingstarted.html). You can build run and debug this template application in QT creator or build it with qmake.

Or run

```bash
qmake TFLM.pro
cd ${DEFAULT_QT_BUILD_DIR}
make -j
```

### Visual Studio

On windows system, install visual studio 2019 first. Checkout official documents [here](https://visualstudio.microsoft.com/).

Simply open solution file at `VS2019\TFLM\TFLM.sln`.

My Visual Studio version info:
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

Install visual studio on linux or use Visual Studio Remote on your local machine. The install extension [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) (ms-vscode.cpptools-extension-pack).

You can check out [VSCode](https://code.visualstudio.com/) or [VSCodium](https://vscodium.com/).

`.vscode\tasks.json` defines the build task. `.vscode\launch.json` defines the debug task.

Run build Task to build the project with make. (Default `ctrl+shift+b`)

Run start debugging to well debug. (Default `F5`)

### WAF

[WAF](https://waf.io/) is a "meta build system". WAF requires only python and written entirely in python .

You can install waf by

```bash
curl -o waf https://waf.io/waf-2.0.20
chmod +x waf
```

And build this project with
```bash
./waf distclean configure build --target debug -v -j4
```

## Reference

* [MinGW](https://sourceforge.net/projects/mingw/)
* [git bash](https://git-scm.com/download/win)
* [gow](https://github.com/bmatzelle/gow)
* [QT](https://doc.qt.io/qt-5/gettingstarted.html)
* [CMake](https://cmake.org/)
* [VSCode](https://code.visualstudio.com/)
* [VSCodium](https://vscodium.com/)
* [Visual Studio](https://visualstudio.microsoft.com/)
* [WAF](https://waf.io/)