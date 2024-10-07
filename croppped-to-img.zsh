convert $1 -resize 2500x2500 pnm:- | cjpeg -quality 85 > img/$(basename $1)
