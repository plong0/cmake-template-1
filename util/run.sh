#!/bin/bash
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPTS_DIR}/.."

SCRIPT="bin/Test01"
BUILD_FLAGS=""
RUN_FLAGS""

if [ "$1" == "--leaks" ]; then
  BUILD_FLAGS="${BUILD_FLAGS} --debug"
fi

${SCRIPTS_DIR}/build.sh ${BUILD_FLAGS}

if [ $? -eq 0 ]; then
  if [ "$1" == "--leaks" ]; then
    valgrind --leak-check=summary ${SCRIPT}

  else
    echo -e "\033[1;93;40mRUNNING ${SCRIPT}\033[1;30;44m"
    eval ${SCRIPT}
    echo -e "\033[0m"
    echo -e "\033[1;93;40m${SCRIPT} finished with exit code of ${?}\033[0m"
  fi
fi
