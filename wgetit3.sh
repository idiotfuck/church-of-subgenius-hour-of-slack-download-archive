


IFS='
'
wget http://db8.ca/radioarchive/hos/ -O hos-old.html
links="`cat hos-old.html | grep -io 'href=".*\.mp3"' | grep -io 'Ho.*\.mp3' `"
for l in $links;
do
	wget "http://db8.ca/radioarchive/hos/$l"
done
rm hos-old.html
