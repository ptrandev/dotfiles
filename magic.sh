#1/bin/sh

######################################################
# dotfiles automated installer                       #
#                                                    # 
# A collection of my system configuration files.     #
# Packaged with an automated installer.              #
#                                                    #
# GitHub: https://github.com/DonutDeflector/dotfiles #
######################################################

# NOTE:
# Some of this stuff will probably not be needed by
# you. Crawl through the script so that you know
# what you're getting.

##############################

#########################
# Packages (Arch Linux) #
#########################


# Official Repositories
sudo pacman -S \
  firefox \
  chromium \
  steam \
  gimp \
  qpdfview \
  gajim \
  mpv \
  obs-studio \
  libreoffice \
  lxappearance \
  lxtask \
  kdenlive \
  breeze \
  breeze-icons \
  arc-gtk-theme \
  pulseaudio \
  pavucontrol \
  gnome-disk-utility \
  gparted \
  gvfs \
  gvfs-afc \
  gksu

# Arch User Repository
yaourt -S \
  discord \
  atom-editor-bin \
  


