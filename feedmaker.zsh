set -Eeuo pipefail

IMG=`cat index.html | pup 'figure:first-child a attr{href}'`
TITLE=`cat index.html | pup 'figure:first-child .title text{}'`

envsubst <<EOF
<item>
	<guid>$TITLE</guid>
	<title>$TITLE</title>
	<link>https://viktor.pictures/$IMG</link>
	<description><![CDATA[<img src="https://viktor.pictures/$IMG">]]></description>
</item>
EOF