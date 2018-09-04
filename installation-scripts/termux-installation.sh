#!/bin/bash
apt install perl busybox golang python python2 && cpan install Term::ANSIScreen && pip install requests
chmod +x dos-framework
mv dos-framework ~/../usr/bin/
