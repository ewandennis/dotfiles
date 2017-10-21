#!/bin/sh

pushd `dirname $0` > /dev/null
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
popd > /dev/null

INSTALLEM=".vimrc .vim .tmux.conf .gitconfig"
for file in $INSTALLEM; do
  [ ! -e ~/$file ] && ln -s $SCRIPTPATH/$file ~/
done

echo . $SCRIPTPATH/.bash_profile >> ~/.bash_profile
