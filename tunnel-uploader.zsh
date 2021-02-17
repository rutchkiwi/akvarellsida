set -euo pipefail
IFS=$'\n\t'
scp -oProxyJump=pi@office.medino.uk img/$1 \[2a01:4b00:9d92:d200:604c:25ce:d48e:2029\]:web/img
scp -oProxyJump=pi@office.medino.uk s/$1 \[2a01:4b00:9d92:d200:604c:25ce:d48e:2029\]:web/s
scp -oProxyJump=pi@office.medino.uk index.html \[2a01:4b00:9d92:d200:604c:25ce:d48e:2029\]:web
scp -oProxyJump=pi@office.medino.uk feed.rss \[2a01:4b00:9d92:d200:604c:25ce:d48e:2029\]:web