#!/usr/bin/env zsh

git_user=$1

if [[ $git_user = "" ]]
then
  echo "specify the target user in the first argument"
  exit 1
fi 

dotfile="/Users/$USERNAME/dev/github.com/$git_user/dotfiles/gitconfig"

if [[ ! -f $dotfile ]]
then
  echo "no gitconfig file at $dotfile"
  exit 1
fi

destination="/Users/$USERNAME/.gitconfig"

if [[ -f $destination ]]
then
  echo "unlinking symlink at $destination"
  unlink $destination
fi

ln -s $dotfile $destination

echo "linked $dotfile to $destination"