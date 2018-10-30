#!/bin/bash
sudo cpanm --uninstall Term::ANSIScreen && sudo yum remove python-requests perl-App-cpanminus
echo "Remove the 'DoS-Framework' directory yourself."
