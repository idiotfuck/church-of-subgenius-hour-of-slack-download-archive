


IFS='
'
wget http://subgenius.com/ts/hos.html -O hos.html
links="`cat hos.html | grep -io 'http.*\.mp3'`"
for l in $links;
do
	wget "$l"
done
rm hos.html
