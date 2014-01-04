#!/bin/bash

PATH_TO_FILE="$(cd `dirname $0` && pwd)";

export		RED="[0;31m"
export		GREEN="[0;32m"
export		DEFAULT="[0;39m"

cd ${PATH_TO_FILE} && git submodule init && git submodule update
rm -rf ~/.fluxbox
rm -rf ~/.xsession
rm -rf ~/.Xmodmap
ln -s ${PATH_TO_FILE}/fluxbox ~/.fluxbox
ln -s ${PATH_TO_FILE}/xsession ~/.xsession
ln -s ${PATH_TO_FILE}/Xmodmap ~/.Xmodmap
