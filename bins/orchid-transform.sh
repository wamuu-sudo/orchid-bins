#!/usr/bin/env bash
#===================================================================================
#
# FILE : orchid-convert.sh
#
# USAGE : su -
#         ./orchid-convert.sh
#
# DESCRIPTION : Script d'installation pour Orchid Linux.
#
# BUGS : ---
# NOTES : ---
# CONTRUBUTORS : Babilinx, Chevek, Crystal, Wamuu
# CREATED : may 2022
# REVISION: 8 mai 2022
#
# LICENCE :
# Copyright (C) 2022 Babilinx, Yannick Defais aka Chevek, Wamuu-sudo aka Hyda, Crystal
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with
# this program. If not, see https://www.gnu.org/licenses/.
#===================================================================================

echo ""
echo "Bienvenue sur le script de transformation Orchid."
echo "Cet outil permets d'avoir la suite de commandes et d'outils Orchid, sur votre Gentoo."
echo "Merci de noter que cet outil est en cours de développement."
sleep 2
echo "Nous vérifions que les prérequis sont bien installés ..."
sudo emerge -q dev-vcs/git flatpak eix > /dev/null
echo "[ok]"
echo "Création de l'arboresence nécessaire ..."
sudo mkdir -p /usr/share/orchid
sudo mkdir -p /usr/share/orchid/fonts
sudo mkdir /usr/share/orchid/tools
sudo mkdir -p /usr/share/orchid/desktop/dwm
sleep 2
echo "[ok]"
echo "Récupération des outils Orchid ..."
cd /usr/share/orchid
sudo git clone https://github.com/wamuu-sudo/orchid-bins.git
sudo git clone https://github.com/wamuu-sudo/wallpapers.git
cd /usr/share/orchid/desktop/dwm
git clone https://github.com/wamuu-sudo/dwm-st-slstatus.git
wget https://dl.orchid-linux.org/misc/tools/set-dwm
cd /usr/share/orchid/tools
git clone https://github.com/Chevek/Gaming-Flatpak.git
sudo cp /usr/share/orchid/tools/Gaming-Flatpak/desktop/gaming-flatpak.desktop /usr/share/applications
cd /usr/share/orchid/fonts
wget https://dl.orchid-linux.org/misc/tools/Caskaydia%20Cove%20Nerd%20Font%20Complete.ttf
wget https://dl.orchid-linux.org/misc/tools/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Mono.ttf
wget https://dl.orchid-linux.org/misc/tools/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
wget https://dl.orchid-linux.org/misc/tools/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf
wget https://dl.orchid-linux.org/misc/tools/applyorchidfonts
echo "[ok]"
echo "Récupération et activation de la méta-commande Orchid ..."
cd /usr/bin
wget https://dl.orchid-linux.org/misc/tools/orchid-sync
sleep 2
echo "[ok]"
echo "Activation de la suite de commandes Orchid ..."
/usr/bin/orchid-sync
sleep 2
echo "[ok]"
echo ""
echo "Transformation terminée, vous disposez de la suite complète des outils Orchid, ainsi que de l'outil Gaming-Flatpak, des fonds d'écrans Orchid et enfin du bureau DWM (non-actif)."
echo ""
echo "Le dossier contenant l'arboresence Orchid est : /usr/share/orchid"
echo ""
echo "Il est conseillé de reboot votre système afin de prendre en compte les changements."
echo "Merci de nous avoir choisis !"
