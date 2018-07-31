# cmake-template-1

Simple demo project to build a hierarchal project structure using [CMake](https://cmake.org/).

Includes some utility scripts (bash):

* `./run.sh` - cleans, builds, runs the target (option `--leaks` flag to run through valgrind)
* `./build.sh` - cleans, builds the target (option `--debug` flag to compile in debug mode)
* `./clean.sh` - cleans existing target and build

Testing support with [Catch2](https://github.com/catchorg/Catch2)

* `./run.sh --tests` - runs the tests
* `./build.sh --tests` - builds the test binary
