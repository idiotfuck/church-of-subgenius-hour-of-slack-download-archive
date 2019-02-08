#!/bin/sh

test -d archive/ || mkdir archive/
cd archive/

IFS='
'

# Latest Hours of Slack:
wget http://subgenius.com/ts/hos.html -O hos.html
for l in `grep -ioE 'http://[^>]*\.(mp3)' hos.html`
do
	wget "$l"
done
rm hos.html

# OLDER Hours of Slack:
wget http://subgenius.com/ts/hos3.html -O hos3.html
for l in `grep -ioE 'http://[^>]*\.(mp3)' hos3.html`
do
	wget "$l"
done
rm hos3.html

# EVEN OLDER Hours of Slack:
wget http://db8.ca/radioarchive/hos/ -O index.html
for l in `grep -ioE 'http://.*\.(mp3)' index.html`
do
	wget "http://db8.ca/radioarchive/hos/$l"
done
rm index.html

echo downloaded `ls *.mp3 | wc -l` files of total `du -h .`

