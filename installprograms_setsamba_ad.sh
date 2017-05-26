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
sudo apt-add-repository ppa:alexx2000/doublecmd
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
sudo apt-get install remmina
sudo apt-get install vlc
sudo apt-get install ttf-mscorefonts-installer
sudo apt-get install gnome-system-monitor
sudo apt-get install sublime-text
sudo apt-get install adobereader-enu
sudo apt-get install flashplugin-installer
sudo apt-get install aptitude
sudo apt-get install elementary-tweaks
sudo apt-get install ghex
sudo apt-get install dconf-tools
sudo apt-get install ssh
sudo apt-get install unity-greeter
sudo apt-get install light-themes
echo "Встановлення закінчене"
else
echo "Додаткові програми не було встановлено"
fi
echo
echo
echo "Якщо хочете встановити Oracle JAVA натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get update
sudo apt-get install oracle-java7-installer
echo "Встановлення закінчене"
else
echo "Oracle JAVA не було встановленно"
fi
echo
echo
echo "Якщо хочете встановити Google-Chrome натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo cp /usr/share/applications/google-chrome.desktop /usr/share/applications/google-chrome-stable.desktop
echo "Встановлення закінчене"
else
echo "Google-Chrome не було встановленно"
fi
echo
echo
echo "Якщо хочете встановити старі scrollbar натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get remove overlay-scrollbar liboverlay-scrollbar3-0.2-0 liboverlay-scrollbar-0.2-0
sudo cp scrollbar.css /usr/share/themes/elementary/gtk-3.0/
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle ieos7-icons pacifica-icon-theme caffeine indicator-synapse
sudo cp apps.css /usr/share/themes/elementary/gtk-3.0/
sudo dpkg -i trashindicator_1.00-1_all.deb
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
echo "Якщо хочете встановити Double Commander натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get install doublecmd-gtk
echo "Встановлення закінчене"
else
echo "Double Commander не було встановлено"
fi
echo
echo
echo "Якщо хочете встановити Samba натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення Samba"
sudo apt-get update
sudo apt-get install samba
sudo apt-get install winbind
sudo apt-get install krb5-user 
sudo apt-get upgrade
sudo cp smb.conf /etc/samba/
sudo nano /etc/samba/smb.conf
sudo cp krb5.conf /etc/
sudo nano /etc/krb5.conf
sudo cp limits.conf /etc/security/
sudo cp lightdm.conf /etc/lightdm/
sudo mv /etc/rc2.d/S20winbind /etc/rc2.d/S99winbind
sudo mv /etc/rc3.d/S20winbind /etc/rc3.d/S99winbind
sudo mv /etc/rc4.d/S20winbind /etc/rc4.d/S99winbind
sudo mv /etc/rc5.d/S20winbind /etc/rc5.d/S99winbind
echo "Встановлення закінчене"
else
echo "Samba не було встановлено"
fi
echo
echo
echo "Якщо хочете встановити Thunderbird натисніть y [y/n]? "
read ans1
if [ $ans1 = y -o $ans1 = Y ]; then
echo "Встановлення нових програм"
sudo apt-get update
sudo apt-get install thunderbird thunderbird-locale-uk
echo "Встановлення закінчене"
else
echo "Thunderbird не було встановленно"
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
sudo apt-get remove --purge libreoffice-*
sudo apt-get remove --purge openoffice-*
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