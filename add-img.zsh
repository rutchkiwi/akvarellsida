#!/bin/zsh
set -euo pipefail
IFS=$'\n\t'

FILEWITHPATH=$1
FILENAME=${FILEWITHPATH:t}
ECHO $FILENAME

# Use the identify command to get the image dimensions
IMGINFO=$(identify cropped/$FILENAME)

# Extract width and height using awk
WIDTH=$(echo $IMGINFO | awk '{print $3}' | cut -d 'x' -f 1)
HEIGHT=$(echo $IMGINFO | awk '{print $3}' | cut -d 'x' -f 2)

# Print the values to verify
echo "Width: $WIDTH"
echo "Height: $HEIGHT"

cat << HEREDOC
<figure>
	<a href="img/$FILENAME">
		<img src="s/$FILENAME"  
		     height='$HEIGHT' width='$WIDTH'>
		<svg xmlns='http://www.w3.org/2000/svg' 
	         height='${HEIGHT}px' width='${WIDTH}px'></svg>
	</a>
	<figcaption>
		<div class="title">$2</div>
		<div class="date">$3</div>
	</figcaption>
</figure>	
HEREDOC
