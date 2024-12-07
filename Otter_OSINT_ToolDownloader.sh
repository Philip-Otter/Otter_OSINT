#!/usr/bin/bash

# Philip Otter 2024
# FOR USE ON A DESPOSIBLE SYSTEM ONLY!
# THIS HAS A HIGH LIKELYHOOD TO FUCK YOUR PYTHON INSTALL FOR FUTURE USAGE!

# Pre-run dependancies
sudo apt update -y
sudo apt install pipx -y

MAINFOLDER="Otter_OSINT_Framework"

mkdir ~/Desktop/$MAINFOLDER

# Make Top Folders
mkdir ~/Desktop/$MAINFOLDER/Devices
mkdir ~/Desktop/$MAINFOLDER/Directories
mkdir ~/Desktop/$MAINFOLDER/Websites
mkdir ~/Desktop/$MAINFOLDER/Users
mkdir ~/Desktop/$MAINFOLDER/Social
mkdir ~/Desktop/$MAINFOLDER/Photos
mkdir ~/Desktop/$MAINFOLDER/Documents

# Devices Folder
mkdir ~/Desktop/$MAINFOLDER/Devices/RTSP
git clone https://github.com/Philip-Otter/LazyAdmin.git ~/Desktop/$MAINFOLDER/Devices/LazyAdmin
wget "https://raw.githubusercontent.com/Philip-Otter/Otter_OSINT/refs/heads/main/RTSP_StartStream.sh" -P ~/Desktop/$MAINFOLDER/Devices/RTSP
chmod +x ~/Desktop/$MAINFOLDER/Devices/RTSP/RTSP_StartStream.sh

# Directories Folder
git clone https://github.com/Philip-Otter/Termite.git ~/Desktop/$MAINFOLDER/Directories/Termite

# Websites Folder
git clone https://github.com/Philip-Otter/PODs.git ~/Desktop/$MAINFOLDER/Websites/PODs
pip install --break-system-packages -r ~/Desktop/$MAINFOLDER/Websites/PODs/requirements.txt
git clone https://github.com/Philip-Otter/CommentScanner.git ~/Desktop/$MAINFOLDER/Websites/CommentScanner
chmod +x ~/Desktop/$MAINFOLDER/Websites/CommentScanner/CommentScanner.sh
sudo apt install eyewitness -y
sudo apt install gowitness -y
sudo apt install witnessme -y
touch ~/Desktop/$MAINFOLDER/Websites/otherTools.md
echo "gowitness" >> ~/Desktop/$MAINFOLDER/Websites/otherTools.md
echo "eyewitness" >> ~/Desktop/$MAINFOLDER/Websites/otherTools.md
echo "witnessme" >> ~/Desktop/$MAINFOLDER/Websites/otherTools.md
git clone https://github.com/Lazza/Carbon14.git ~/Desktop/$MAINFOLDER/Websites/Carbon14
pip install --break-system-packages -r ~/Desktop/$MAINFOLDER/Websites/Carbon14/requirements.txt
git clone https://github.com/s0md3v/Photon.git ~/Desktop/$MAINFOLDER/Websites/Photon
pip install --break-system-packages -r ~/Desktop/$MAINFOLDER/Websites/Photon/requirements.txt

# Otter_OSINT
git clone https://github.com/Philip-Otter/Otter_OSINT.git ~/Desktop/$MAINFOLDER/Otter_OSINT

# Users Folder
sudo apt install sherlock
touch ~/Desktop/$MAINFOLDER/Users/otherTools.md
echo "sherlock" >> ~/Desktop/$MAINFOLDER/Users/otherTools.md
git clone https://github.com/iojw/socialscan.git ~/Desktop/$MAINFOLDER/Users/SocialScan
pipx install  ~/Desktop/$MAINFOLDER/Users/SocialScan
git clone https://github.com/p1ngul1n0/blackbird.git ~/Desktop/$MAINFOLDER/Users/Blackbird
pip install --break-system-packages -r  ~/Desktop/$MAINFOLDER/Users/Blackbird/requirements.txt
pipx install holehe
echo "holehe" >> ~/Desktop/$MAINFOLDER/Users/otherTools.md
git clone https://github.com/soxoj/maigret.git ~/Desktop/$MAINFOLDER/Users/Maigret
pip install --break-system-packages ~/Desktop/$MAINFOLDER/Users/Maigret

# Social Folder
mkdir ~/Desktop/$MAINFOLDER/Social/Instagram
git clone https://github.com/Datalux/Osintgram.git ~/Desktop/$MAINFOLDER/Social/Instagram/Osintgram
pipx install instalooter
touch ~/Desktop/$MAINFOLDER/Social/Instagram/otherTools.md
echo "python3 -m instalooter" >> ~/Desktop/$MAINFOLDER/Social/Instagram/otherTools.md
sudo apt install instaloader
echo "instaloader" >> ~/Desktop/$MAINFOLDER/Social/Instagram/otherTools.md

# Photos Folder
sudo apt install mediainfo-gui -y
touch ~/Desktop/$MAINFOLDER/Photos/otherTools.md
echo "mediainfo-gui" >> ~/Desktop/$MAINFOLDER/Photos/otherTools.md

# Documents Folder
pipx install xeuledoc
touch ~/Desktop/$MAINFOLDER/Documents/otherTools.md
echo "xeuledoc" >> ~/Desktop/$MAINFOLDER/Documents/otherTools.md

# Requirements
sudo apt install ffmpeg

# Ensure Path
pipx ensurepath

echo
echo "YOU MUST REOPEN TERMINAL FOR THE PATH CHANGES TO TAKE EFFECT!"
