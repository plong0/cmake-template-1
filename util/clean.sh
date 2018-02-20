#!/bin/bash
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPTS_DIR}/.."
if [ "$1" != "--quiet" ]; then
  echo -e "\033[1;93;40mclean.sh RUNNING\033[0m"
fi
if [ -d "build" ]; then
  echo -e "\033[1;96;40mFound an existing build!\033[0m"
  echo -e "\033[95;40mDestroying build\033[0m"
  cd build
  if [ -f "Makefile" ]; then
    echo -e "\033[1;96;40mFound a Makefile\033[0m"
    echo -e "\033[95;40mRunning make clean\033[0m"
    make clean
    echo -e "\033[1;96;40mBuild cleaned!\033[0m"
  fi
  echo -e "\033[95;40mRemoving build\033[0m"
  cd ..
  rm -rf build
  echo -e "\033[1;96;40mBuild removed!\033[0m"
  echo -e "\033[1;96;40mBuild destroyed!\033[0m"
elif [ "$1" != "--quiet" ]; then
  echo -e "\033[1;91;40mNo build found!\033[0m"
fi
if ls bin/*.dSYM 1> /dev/null 2>&1; then
  echo -e "\033[95;40mRemoving bin/*.dSYM\033[0m"
  rm -rf bin/*.dSYM
  echo -e "\033[1;96;40mbin/*.dSYM removed!\033[0m"
fi
if [ "$1" != "--quiet" ]; then
  echo -e "\033[1;93;40mclean.sh FINISHED!\033[0m"
fi
exit 0
