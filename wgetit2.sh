


IFS='
'
wget http://subgenius.com/ts/hos3.html -O hos3.html
links="`cat hos3.html | grep -io 'href=".*\.mp3"' | grep -io 'http.*libsyn.*Hour.*\.mp3'`"
for l in $links;
do
	wget "$l"
done
rm hos3.html
