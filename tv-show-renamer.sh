#!/bin/sh

### http://www.filebot.net/cli.html ###

DOWNLOAD_DIR="$HOME/Downloads/Transmission"

echo "Looking for files in $DOWNLOAD_DIR"
filebot \
	-rename $DOWNLOAD_DIR \
	--format "{n}/Season {s}/{n} - {s00e00} - {t}" \
	--output $HOME/TV\ Shows/ \
	--conflict override \
	--log-file filebot.log \
	-non-strict \
	-get-subtitles