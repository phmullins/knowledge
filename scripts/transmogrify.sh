#!/bin/bash
#
# Script Name: ~/bin/transmogrify.sh
# Description: Simple script to convert a YouTube video into an mp3.
# Created: 2018-09-29 @ 03:28 PM | Modified 2018-11-24 @ 04:03 AM.
# Author: patrick@arkmail.us 
#
# Note: Requires youtube-dl, ffmpeg, and lame.
#
# Example usage:
# ./transmogrify "http://www.youtube.com/watch?v=_VYggjoRb4o"

# If $1 contains data then do something.
if [[ $1 =~ v=(.*) ]]; then

    # Get the filename for the video and create a variable from it.
    #filename=$(youtube-dl --get-filename $1)

    # Use the filename minus the extension as the title.
    #title=${filename%.*}

    # Download the YouTube video specified in the $1 variable.
    echo "----> Downloading video from YouTube"
    youtube-dl -q $1 --extract-audio --audio-format flac --audio-quality 0

    # Use ffmpeg to extract audio from video and then delete the video.
    #echo "----> Extracting audio from video"
    #ffmpeg -loglevel quiet -i "$filename" "$title".wav && rm "$filename"

    # Create an MP3 file and then delete the .wav file.
    #echo "----> Encoding audio to MP3"
    #lame --quiet "$title".wav "$title".mp3 && rm "$title".wav
fi
