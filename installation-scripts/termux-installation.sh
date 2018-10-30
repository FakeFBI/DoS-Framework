#!/bin/bash
apt install perl busybox golang python python2 make && cpan App::cpanminus && cpanm Term::ANSIScreen && pip install requests
chmod +x dos
mv dos ~/../usr/bin/
