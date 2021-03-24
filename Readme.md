# Tensorflow Lite Micro

[![Status](https://storage.googleapis.com/tensorflow-kokoro-build-badges/tflite-micro.svg)](https://storage.googleapis.com/tensorflow-kokoro-build-badges/tflite-micro.html)

EN|[简中](Readme_CN.md)

**Generated from Tensorflow v2.3.1**

A complete overview of Tensorflow Lite Micro.

Searching through the web, I found there are not that much information about it. So I create this project as a definitive place to go to research Tensorflow Lite Micro. This project is under active development. If you want to contribute please submit pull request or contact me directly at wniu(at)connect(dot)ust(dot)hk.

## Support Matrix

| OS/Platform |  Makefile | Cmake | Qt | Visual Studio | Visual Studio code | Waf |
|---|---|---|---|---|---|---|
|Windows 10| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |:heavy_check_mark: |:x: |
|Linux(Ubuntu 18.04)|:heavy_check_mark: | :heavy_check_mark:| :heavy_check_mark:| :x:| :heavy_check_mark:|:heavy_check_mark: |
|Linux(Centos 7)|:heavy_check_mark: | :heavy_check_mark:| :heavy_check_mark:| :x:| :heavy_check_mark:|:heavy_check_mark: |

Build instruction for supported system can be found [HERE](doc\build.md).

## This Project

├── .vscode: Visual studio code project files 
├── doc: Documents
├── LICENSE: license agreement
├── Makefile: Make project file
├── Makefile.plank: yet another Make project file
├── Readme.md: Main document in English
├── Readme_zh.md: Main document in Mandarin
├── tensorflow: Tensorflow lite Micro source code
│   ├── core: 
│   └── lite: 
├── TFLM.pro: 
├── third_party: 
│   ├── flatbuffer: flatbuffer header
│   ├── gemmlowp: gemmlowp header
│   └── ruy
├── VS2019: 
│   └── TFLM: Visual Studio Project files
├── CMakeLists.txt: Cmake project file
└── wscript: Waf project file

## TODO

- [x] Isolating TFLM source from Tensorflow v2.3.1
- [x] Makefile
- [x] Cmake
- [x] QT
- [x] Visual Studio
- [x] Visual Studio Code
- [x] WAF
- [x] Documentation
- [ ] General Documentation on Tensorflow Lite Micro (WIP)
- [x] UML Class diagram for Tensorflow Lite Flatbuffer model
- [ ] UML Class diagram for Tensorflow Lite Micro
- [ ] UML Sequence diagram for Tensorflow Lite Micro
- [ ] Provide helper script for file operation only depend on python
- [ ] Provide pre-trained models and trainning code
    - [ ] MNIST Classification
    - [ ] Visual Wake Word
    - [ ] Cifar-10 Classification with resnet-10
    - [ ] Anomaly detection with auto-encoder
    - [ ] Keyword spotting with 

## Reference

* TensorFlow Lite Micro: Embedded Machine Learning on TinyML Systems [Arxiv](https://arxiv.org/abs/2010.08678)

* TensorFlow Lite for Microcontrollers official [documents](https://www.tensorflow.org/lite/microcontrollers)

* Tensorflow [Github](https://github.com/tensorflow/tensorflow)

* Tensorflow Lite Micro [Github](https://github.com/tensorflow/tensorflow/tree/master/tensorflow/lite/micro)

## About me

Im ninn55. A grads student from HKUST you can find me [here](https://ninn55.github.io/).