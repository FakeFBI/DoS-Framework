# DoS-Framework
Collection of DoS Tools

First of all,

<code>git clone https://github.com/FakeFBI/DoS-Framework.git</code>

To run it, you should install "Term::ANSIScreen" perl module and "requests" Python 2 module. You can install them by executing the scripts in "installation-scripts" directory. (e.g. for Fedora GNU/Linux: <code>./fedora-install.sh</code>). Then execute by typing <code>perl execme.pl</code> or <code>./execme.pl</code>

If there's no available package for "requests" Python 2 module, you can install it by typing <code>pip install requests</code>.

To use all features you should install Go, Python3, Python2, Perl, and Bash (most distributions are O.K.).

You shouldn't change the name of ".pl" file. If it does, you should change "exec "perl WHATEVER.pl";" commands in ".pl" file. Also you shouldn't change the locations of DoS tools. If you do, you should change the perl script accordingly.

You can open issue for adding more tools or fork it.

Last warning: "doser.py" tool is buggy in POST method, so you can give it a chance by trying manually:

For POST:

<code>python doser.py -t 999 -p 'https://targeted.site.com' -ah 'Content-Type: application/json' -d '{"json": "payload"}'</code>

For GET:

<code>python doser.py -t 999 -g 'https://targeted.site.com'</code>

Critical note: I am not responsible if you harm someone's server or get into trouble.

I hope this tool will become inspiring and useful for you.

Final situation: Everything is updated.

Update: It can now be used on Termux. Just use "termux-installation.sh" script to install. After installation "dos-framework" command will be enough to execute "perl execme.pl" in a short way.
