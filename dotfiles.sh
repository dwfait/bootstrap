#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
copy_files() {
  rsync  --exclude ".DS_Store" -av ./my_dotfiles/ ~
}
if [ "$1" = -f ]
then
  copy_files
else
  echo "Overwrite existing dotfiles? (y/n)"
  read reply
  if [ "`expr \"$reply\" : \"^[Yy]$\"`" != "0" ]
  then
    copy_files
  fi
fi
unset copy_files
