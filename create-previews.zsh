set -euxo pipefail
mkdir s/cropped
for f in cropped/*;
	do convert $f -resize 690x480 pnm:- | mozcjpeg -quality 85 > s/$f;
done
mv s/cropped/* s
rm -r s/cropped