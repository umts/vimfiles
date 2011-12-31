#!/bin/sh
# Borrowed from https://github.com/carlhuda/janus
function die()
{
  echo "${@}"
  exit 1
}

# Add <strong>.old</strong> to any existing Vim file in the home directory
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do
  if [[ ( -e $i ) ]]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

# Clone Janus into .vim
git clone --recursive https://github.com/umasstransit/vimfiles.git $HOME/.vim \
  || die "Could not clone the repository to ${HOME}/.vim"