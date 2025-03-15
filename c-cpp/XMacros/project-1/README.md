# CMake
Learning CMake

## Recommended Commands
- cmake -B \<build tree\> -S \<source tree\>
    - \<build tree\> is the path to target/output directory
    - \<source tree\> is the path at which your source code is located
- cmake --build \<build tree\>

## CMake is a family of tools and consists of five executables:
- __cmake__: main executable that configures, generates, and builds projects.
- __ctest__: test driver program used to run and report test results.
- __cpack__: packaging program used to generate installers and source packages.
- __cmake-gui__: graphical wrapper around __cmake__.
- __ccmake__: console based GUI wrapper around __cmake__.

## CMake
Provides a few modes of operation (also called actions):
- Generating a project buildsystem
- Building a project
- Installing a project
- Running a script
- Running a command-line tool
- Getting help

### Generating a project buildsystem
- cmake \[\<options\>\] -S \<path-to-source\> -B \<path-to-build\>
- cmake\[\<options\>\] \<path-to-source\>
    - Don't Use 
- cmake \[\<options\>\] \<path-to-existing-build\>
    - Don't Use

### Options for generators
- Override by setting environment variable: __CMAKE_GENERATOR__
- Specify directly on the command line:
```
$ cmake -G <generator-name> <path-to-source>
```

### Options for debugging and tracing
- From build tree:
```
$ cmake --system-information [file]
```

- Specifying log leveel
```
$ cmake --log-level=<level>
```
- Where level and be:
    - ERROR
    - WARNING
    - NOTICE
    - STATUS
    - VERBOSE
    - DEBUG
    - TRACE

### Building a project
```
$ cmake --build <dir> [<options>] [-- <build-tool-options>]
```
- In the majority of cases, it is enough to simply provide the bare minimum:
```
$ cmake --build <dir>
```
- Cmake needs to know where the build tree is located: \<dir\>

### Options for parallel builds
- Specify the number of jobs with the following options:
```
$ cmake --build <dir> --parallel [<number-of-jobs>]
```

```
$ cmake --build <dir> -j [<number-of-jobs>]
```
- or use the environment variable: __CMAKE_BUILD_PARALLEL_LEVEL__

### Options for target
```
$ cmake --build <dir> --target <target1> -t <target2> ...
```
- Clean:
```
$ cmake --build <dir> -t clean
```
- To clean first and build:
```
$ cmake --build <dir> --clean-first
```