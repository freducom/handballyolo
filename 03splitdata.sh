#!/bin/bash

#Splits the data into training data and test data

#Config
INPUTFILE=handballgame01
DATAFOLDER=dataset

#Split images to train & test set
TOTALFILES=$(ls -1 $DATAFOLDER/$INPUTFILE/*.jpg | wc -l)
TRAINSETSIZE=$((TOTALFILES*8/10))
i=0
for f in $DATAFOLDER/$INPUTFILE/*.jpg ; do
    LABELFILE="${f%%.*}.txt"
    if [ $i -lt $TRAINSETSIZE ]; then
        if [ -f "$LABELFILE" ]; then
                echo "/valohai/inputs/handballs/"$f >> $DATAFOLDER/train.txt;
        fi
        i=$(($i+1))
    else
        if [ -f "$LABELFILE" ]; then
                echo "/valohai/inputs/handballs/"$f >> $DATAFOLDER/test.txt;
        fi
    fi
done
