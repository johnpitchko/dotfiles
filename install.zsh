#!/bin/zsh

config_dir_dotfiles=/Users/johnpitchko/.dotfiles/.config
config_dir=/Users/johnpitchko/.config
config_dir_backup=/Users/johnpitchko/.config.bak

# Make a backup of the existing config directory
echo "Backup up $config_dir to $config_dir_backup..."
cp -R -v $config_dir_backup

# Symlink the config folder in the repo to the home directory
echo "Symlinking $config_dir to $config_dir_backup..."
ln -s $config_dir_dotfiles $config_dir
