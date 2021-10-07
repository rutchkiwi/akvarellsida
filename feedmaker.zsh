set -Eeuo pipefail

IMG=`cat index.html | pup 'figure:first-child a attr{href}'`
TITLE=`cat index.html | pup 'figure:first-child .title text{}'`

envsubst << EOF > newitem.xml
	<item>
		<guid>$TITLE</guid>
		<title>$TITLE</title>
		<link>https://viktor.pictures/$IMG</link>
		<description><![CDATA[<img src="https://viktor.pictures/$IMG">]]></description>
	</item>
EOF

sed -i.bak '/marker/r newitem.xml' feed.rss

rm newitem.xml feed.rss.bak

echo feed generated. new version:
head -n 20 feed.rss