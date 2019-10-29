#!/bin/bash

for d in $(ls); do
	pushd $d
	for f in $(ls Upscale); do 
		mogrify -colorspace Gray Upscale/$f & 
	done
#	waifu2x -m /media/Shared/Manga/models/models-cunet/ -g 1 -i Original -o Upscale	-j 4:4:8
	popd
done
