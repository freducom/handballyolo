#!/bin/bash

#Config
INPUTFILE=handballgame01
DATAFOLDER=dataset
YOUTUBEVIDEO=4pOkwP-ZqyI

#Create Datafolder
mkdir $DATAFOLDER

#Download YouTube video
printf "DOWNLOADING YOUTUBEVIDEO $YOUTUBEVIDEO\n"
youtube-dl $YOUTUBEVIDEO -o ''"${DATAFOLDER}"'/'"${INPUTFILE}"'.%(ext)s'  --quiet 

#Rip image from video
printf "RIPPING IMAGES FROM VIDEO\n"
mkdir $DATAFOLDER/$INPUTFILE
ffmpeg -i $DATAFOLDER/$INPUTFILE.mp4 -vframes 1000 -vf fps=1/5 $DATAFOLDER/$INPUTFILE/thumb%04d.jpg -hide_banner -loglevel panic

#Delete video
rm $DATAFOLDER/$INPUTFILE.mp4


