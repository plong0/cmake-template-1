#!/bin/bash
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPTS_DIR}/.."

SCRIPT="bin/Test01"
BUILD_FLAGS=""
RUN_FLAGS""

if [ "$1" == "--leaks" ]; then
  BUILD_FLAGS="${BUILD_FLAGS} --debug"

elif [ "$1" == "--tests" ]; then
  BUILD_FLAGS="${BUILD_FLAGS} --tests"
  SCRIPT="bin/Test01-tests -r compact"

fi

${SCRIPTS_DIR}/build.sh ${BUILD_FLAGS}

if [ $? -eq 0 ]; then
  if [ "$1" == "--leaks" ]; then
    valgrind --leak-check=summary ${SCRIPT}

  else
    
    if [ "$1" == "--tests" ]; then
      echo -e "\033[1;93;40mRUNNING: \033[0;92;40m${SCRIPT}\033[0m\n"
    else
      echo -e "\033[1;93;40mRUNNING: \033[0;92;40m${SCRIPT}\033[30;44m"
    fi
    eval ${SCRIPT}
    if [ "$1" != "--tests" ]; then
      echo -e "\033[0m"
    fi
    echo -e "\033[92;40m${SCRIPT}\033[1;93;40m finished with exit code of ${?}\033[0m"
  fi
fi
