#!/bin/sh

pushd `dirname $0` > /dev/null
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
popd > /dev/null

ln -s $SCRIPTPATH/.vimrc ~/
ln -s $SCRIPTPATH/.vim ~/
ln -s $SCRIPTPATH/.tmux.conf ~/

