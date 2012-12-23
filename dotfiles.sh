#!/bin/sh
cd "$(dirname "${BASH_SOURCE}")"
git pull
copy_files() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
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
