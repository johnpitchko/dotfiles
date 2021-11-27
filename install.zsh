#!/bin/zsh


#------------------------------------------------------------------------------#
#                                WARNING                                       #
#------------------------------------------------------------------------------#
#
# I was lazy setting this up so it "sorta" works but only for the nvim folder (which was the only folder I was interested in at the time).
#
# It may not work properly!!!

config_dir_dotfiles=/Users/johnpitchko/.dotfiles/config/nvim
config_dir=/Users/johnpitchko/.config/nvim
config_dir_backup=/Users/johnpitchko/.config/nvim.bak

# Make a backup of the existing config directory
echo "Backup up $config_dir to $config_dir_backup..."
mv -v $config_dir $config_dir_backup

# Symlink the config folder in the repo to the home directory
echo "Symlinking $config_dir to $config_dir_backup..."
ln -s $config_dir_dotfiles $config_dir
