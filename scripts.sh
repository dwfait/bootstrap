#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
git pull

check_for_local_bin() {
  if [ "`expr "$PATH" : \"\(.*\)\/usr\/local\/bin\"`" = "0" ]
  then
    echo "/usr/local/bin is not in \$PATH"
    echo "You will need to add it to access these scripts."
  fi
}

check_for_local_bin

echo "Copying scripts to /usr/local/bin/"
rsync --exclude ".DS_Store" -av ./my_scripts/ /usr/local/bin/

unset check_for_local_bin
