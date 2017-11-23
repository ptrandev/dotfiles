#!/bin/sh

###########################################################
# antergos-xfce4-autoinstaller                            #
#                                                         #
# A sihple bash script that installs everything I need    #
# to get up and running with xfce4.                       #
#                                                         #
# Github: https://github.com/DonutDeflector/dotfiles      #
###########################################################

###########################################################
# Available Options                                       #
#                                                         #
# Laptop - Adds PowerTOP and TLP optimizations.           #
###########################################################

# Packages Installed from the Official Repos
sudo pacman -S
  xfce4-whiskermenu-plugin
  xfce4-sensors-plugin
  xfce4-systemload-plugin
  arc-gtk-theme

# Packages Installed from the AUR
yaourt -S --noconfirm
  lmms-beta
  visual-studio-code
  inox-bin
