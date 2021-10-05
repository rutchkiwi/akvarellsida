set -euxo pipefail

# deletes the temp directory
function cleanup {      
  rm -rf s/cropped
}
# register the cleanup function to be called on the EXIT signal
trap cleanup EXIT

mkdir s/cropped

for f in cropped/*;
	do convert $f -resize 690x480 pnm:- | mozcjpeg -quality 85 > s/$f;
done
mv s/cropped/* s