#!/bin/sh

###########################################################
# antergos-xfce4-autoinstaller                            #
#                                                         #
# A simple bash script that installs everything I need    #
# to get up and running with xfce4.                       #
#                                                         #
# Github: https://github.com/DonutDeflector/dotfiles      #
###########################################################

###########################################################
# Available Options                                       #
#                                                         #
# Laptop - Adds PowerTOP and TLP optimizations.           #
# Nvidia - Adds 32-bit OpenGL driver.                     #
###########################################################

# Packages Installed from the Official Repos
sudo pacman -Syyu \
  xfce4-whiskermenu-plugin \
  xfce4-sensors-plugin \
  xfce4-systemload-plugin \
  arc-gtk-theme \
  gparted \
  plank

# Add GPG Keys
gpg --recv-keys 0FC3042E345AD05D

# Packages Installed from the AUR
yaourt -Syyu lmms-beta visual-studio-code inox-bin redshift-gtk-git discord grub-customizer --noconfirm

# Inox Browser Extensions
cd
git clone https://github.com/DonutDeflector/inoxunpack.git
cd inoxunpack
./inoxunpack.py lighthouse
./inoxunpack.py https-everywhere
./inoxunpack.py privacy-badger
./inoxunpack.py res
./inoxunpack.py ublock-origin
cd

# Laptop Optimizations
if [ "$1" = "laptop" ]
then
  sudo pacman -S powertop tlp
  sudo cat >/home/phillip/Downloads/cool.txt <<EOL
[Unit]
Description=Powertop tunings

[Service]systemctl enable tlp.service  
systemctl enable tlp-sleep.service
Type=oneshot
ExecStart=/usr/bin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
EOL
  sudo systemctl enable powertop
  sed -i 's/MAX_LOST_WORK_SECS_ON_BAT=60/MAX_LOST_WORK_SECS_ON_BAT=15/g' /etc/default/tlp
  systemctl enable tlp.service  
  systemctl enable tlp-sleep.service
fi

# Nvidia Optimizations
if [ "$1" = "nvidia" ]
then
  sudo pacman -Syyu lib32-nvidia-utils libva-vdpau-driver
fi

