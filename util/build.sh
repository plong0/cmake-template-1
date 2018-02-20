#!/bin/bash
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPTS_DIR}/.."

CMAKE_FLAGS=""

if [ "$1" == "--debug" ]; then
  CMAKE_FLAGS="$CMAKE_FLAGS -DCMAKE_BUILD_TYPE=Debug"
fi

echo -e "\033[1;93;40mbuild.sh RUNNING\033[0m"

${SCRIPTS_DIR}/clean.sh --quiet

echo -e "\033[95;40mCreating new build!\033[0m"
mkdir build
cd build
echo -e "\033[95;40mRunning cmake\033[0m"
cmake ${CMAKE_FLAGS} ..
if [ $? -eq 0 ]; then
  echo -e "\033[1;96;40mcmake COMPLETE!\033[0m"
  echo -e "\033[95;40mRunning make\033[0m"
  make
  if [ $? -eq 0 ]; then
    echo -e "\033[1;96;40mmake COMPLETE!\033[92;40m (Target built!)\033[0m"
  else
    echo -e "\033[1;91;40mmake FAILED! :(\033[0m"
    exit 1
  fi
else 
  echo -e "\033[1;91;40mcmake FAILED! :(\033[0m"
  exit 1
fi
echo -e "\033[1;93;40mbuild.sh FINISHED!\033[0m"
exit 0
