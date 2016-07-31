#!/bin/sh

read -p "This will replace the current config entirely. Are you sure [y|N]? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
  BASEDIR=$(cd "$(dirname "$0")"; pwd)

  cd ~/.config/sublime-text-3/Packages/
  rm -r User
  ln -s $BASEDIR/User
fi

echo
