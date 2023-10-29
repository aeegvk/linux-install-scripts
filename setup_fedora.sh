#!/bin/bash

sudo dnf -y install git mariadb zsh dnf-plugins-core openssl python-pip

# install docker-ce
# sudo dnf -y config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
# sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# sudo systemctl enable --now docker
# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker

# install visual-studio-code
# sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
# sudo dnf -y check-update
# sudo dnf -y install code

# install mattermost
##### sudo dnf -y copr enable agoston/mattermost epel-7-x86_64
##### sudo dnf -y install mattermost-desktop
# wget 'https://releases.mattermost.com/desktop/5.5.1/mattermost-desktop-5.5.1-linux-x86_64.rpm' -O 'mattermost.rpm'
# sudo dnf -y install mattermost.rpm

# install awscli
# sudo dnf -y install awscli

# install kubernetes lens app
# sudo dnf -y config-manager --add-repo https://downloads.k8slens.dev/rpm/lens.repo
# sudo dnf -y install lens

# install thorium browser
# wget 'https://github.com/Alex313031/thorium/releases/download/M117.0.5938.157/thorium-browser_117.0.5938.157.x86_64.rpm' -O 'thorium.rpm'
# sudo dnf -y install thorium.rpm

# install sublime text and merge
# sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
# sudo dnf -y config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
# sudo dnf -y install sublime-text sublime-merge

# install flathub and flatpak
sudo dnf -y install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# install dbeaver
# flatpak install flathub io.dbeaver.DBeaverCommunity

# install beekeeper studio
# flatpak install flathub io.beekeeperstudio.Studio

# install dbvis
# wget 'https://dbvis.com/product_download/dbvis-23.2.5/media/dbvis_linux_23_2_5.sh' -O 'dbvis.sh
# chmod +x dbvis.sh
# ./dbvis.sh

# install table plus
# sudo rpm -v --import https://yum.tableplus.com/apt.tableplus.com.gpg.key
# sudo dnf -y config-manager --add-repo https://yum.tableplus.com/rpm/x86_64/tableplus.repo
# sudo dnf -y install tableplus

# install openvpn3
# sudo dnf -y config-manager --set-enabled PowerTools
# sudo dnf -y copr enable dsommers/openvpn3 fedora-38-x86_64
# sudo dnf -y install openvpn3-client

# install url redirector
echo 'installing url redirector'
# mkdir apps
# git clone git@github.com:aeegvk/redirect-browser.git apps/redirect-browser
# python -m pip install pipenv tldextract
chmod +x apps/redirect-browser/link-redirector.py
# ln -s ~/apps/redirect-browser/link-redirector.py ~/.local/bin/
# ln -s ~/apps/redirect-browser/config.json ~/.local/bin/
# cp ~/apps/redirect-browser/link-redirector.desktop ~/.local/share/applications/
chmod +x $HOME/.local/share/applications/link-redirector.desktop
gio mime x-scheme-handler/http link-redirector.desktop
gio mime x-scheme-handler/https link-redirector.desktop


# install oh my zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
