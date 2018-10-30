#!/bin/bash
sudo cpanm --uninstall Term::ANSIScreen && sudo dnf remove perl-App-cpanminus python2-request
echo "Remove the 'DoS-Framework' directory yourself."
