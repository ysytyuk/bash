#!/bin/bash
echo "Якщо хочете додати додатковий репозитарій натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Додається репозитарій?"
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:elementary-br/projects
sudo add-apt-repository ppa:versable/elementary-update
sudo add-apt-repository ppa:elementaryos-fr-community
sudo add-apt-repository ppa:satyajit-happy/themes
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo add-apt-repository ppa:mozillateam/firefox-next
sudo add-apt-repository ppa:libreoffice/ppa
sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ precise partner' >> /etc/apt/sources.list.d/canonical_partner.list"
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ precise main" >> /etc/apt/sources.list.d/dropbox.list'
sudo add-apt-repository ppa:mozillateam/thunderbird-next
sudo add-apt-repository ppa:ubuntu-x-swat/x-updates
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:team-xbmc/ppa
sudo add-apt-repository ppa:transmissionbt/ppa
sudo add-apt-repository ppa:caffeine-developers/ppa
sudo apt-add-repository ppa:heathbar/super-wingpanel
sudo apt-add-repository ppa:team-xbmc/ppa
sudo apt-get update && sudo apt-get update
sudo apt-get upgrade
echo "Репозитарій додано"
else
echo "Репозитарій не було додано"
fi
echo
echo
echo "Якщо хочете встановити додаткові програми натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get update
sudo apt-get install ttf-mscorefonts-installer
sudo apt-get install gnome-system-monitor
sudo apt-get install adobereader-enu
sudo apt-get install flashplugin-installer
sudo apt-get install aptitude
sudo apt-get install elementary-tweaks
sudo apt-get install dconf-tools
sudo apt-get install synaptic
sudo apt-get install ssh
sudo apt-get install xbmc
mkdir /home/mediacenter/Video
mkdir /home/mediacenter/SharedDocs
mkdir /home/mediacenter/torrents
sudo bash <<EOF
sudo echo "mediacenter ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot, /sbin/shutdown" >> /etc/sudoers
EOF
cp keymaps.xml /home/mediacenter/.xbmc/userdate/keymaps/
echo "Встановлення закінчене"
else
echo "Додаткові програми не було встановлено"
fi
echo
echo
echo "Якщо хочете встановити Transmission натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get update
sudo apt-get install transmission-daemon
echo "Встановлення закінчене"
else
echo "Transmission не було встановленно"
fi
echo
echo
echo "Налаштування Transmission натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
transmission-daemon -f& sleep 10
sudo killall -HUP transmission-daemon
cp transmission/settings.json /home/mediacenter/.config/transmission-daemon/
sudo cp transmission/transmission-daemon /etc/init.d/transmission-daemon
sudo chmod +x /etc/init.d/transmission-daemon
sudo chown root:root /etc/init.d/transmission-daemon
sudo update-rc.d transmission-daemon defaults
echo "Налагштування закінчене"
else
echo "Transmission не було налаштовано"
fi
echo
echo
echo "Якщо хочете встановити Google-Chrome натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get update
sudo apt-get install google-chrome-stable
echo "Встановлення закінчене"
else
echo "Google-Chrome не було встановленно"
fi
echo
echo
echo "Якщо хочете змінити вигляд натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get remove overlay-scrollbar liboverlay-scrollbar3-0.2-0 liboverlay-scrollbar-0.2-0
sudo cp scrollbar.css /usr/share/themes/elementary/gtk-3.0/
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle ieos7-icons pacifica-icon-theme caffeine indicator-synapse
gsettings set org.pantheon.desktop.gala.appearance button-layout 'close,minimize,maximize:'
gsettings set org.pantheon.files.preferences single-click 'false'
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/ARTcast.jpg'
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'
gsettings set org.gnome.libgnomekbd.keyboard layouts "['us', 'ua', 'ru']"
gsettings set org.gnome.libgnomekbd.keyboard options "['grp\tgrp:ctrl_shift_toggle']"
gsettings set org.gnome.desktop.screensaver idle-activation-enabled 'false'
gsettings set org.gnome.desktop.screensaver lock-enabled 'false'
sudo cp apps.css /usr/share/themes/elementary/gtk-3.0/
sudo dpkg -i trashindicator_1.00-1_all.deb
cp -R elementary /home/mediacenter/.themes/
echo "Встановлення закінчене"
else
echo "scrollbar не було встановленно"
fi
echo
echo
echo "Якщо хочете встановити Skype натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
sudo apt-get -f install
echo "Встановлення закінчене"
else
echo "Skype не було встановленно"
fi
echo
echo
echo "Якщо хочете встановити Samba натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення Samba"
sudo apt-get update
sudo apt-get install samba
sudo cp smb.conf /etc/samba/smb.conf
smbpasswd
echo "Встановлення закінчене"
else
echo "Samba не було встановлено"
fi
echo
echo
echo "Якщо хочете встановити кодеки для gnome натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get install ubuntu-restricted-extras
echo "Встановлення закінчене"
else
echo "Кодеки не було встановленно"
fi
echo
echo
echo "Якщо хочете встановити K3B натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo aptitude -R install k3b
echo "Встановлення закінчене"
else
echo "K3B не було встановленно"
fi
echo
echo
echo "Якщо хочете встановити Nautilus натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo aptitude -R install nautilus
sudo cp nautilus.desktop /usr/share/applications/
echo "Встановлення закінчене"
else
echo "Nautilus не було встановленно"
fi
echo
echo
echo "Якщо хочете встановити OpenOffice натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get remove --purge luibreoffice-*
sudo apt-get remove --putge openoffice-*
sudo dpkg -iR ru/DEBS/
echo "Встановлення закінчене"
else
echo "OpenOffice не було встановленно"
fi
echo
echo
echo "Якщо хочете змінити OpenOffice розмір scrollbar натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo cp gtkrc /usr/share/themes/elementary/gtk-2.0/
echo "Встановлення закінчене"
else
echo "зміни не було встановлено"
fi
echo
key=""
echo -n "Нажміть любу клавішу для закінчення..."
stty -icanon
key=`dd count=1 2>/dev/null`
stty icanon
echo
