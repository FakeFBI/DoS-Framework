#!/bin/bash
cpanm --uninstall Term::ANSIScreen && pip uninstall requests && apt remove busybox golang python python2
rm ~/../usr/bin/dos
echo "Remove the 'DoS-Framework' directory yourself."
