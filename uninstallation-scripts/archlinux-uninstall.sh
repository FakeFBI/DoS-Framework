#!/bin/bash
sudo cpanm --uninstall Term::ANSIScreen && sudo pacman -Rns cpanminus python2-requests
echo "Remove the 'DoS-Framework' directory yourself."
