#!/bin/bash

#Unzip training data


#Actual training with pretrained model weights
./darknet detector train /inputs/yolosettings/yolosettings/detector.data /inputs/yolosettings/yolosettings/cfg/yolov3-custom.cfg darknet53.conv.74 

#Testing of one image
#./darknet detect /Users/fredu/Desktop/handball/dataset/handballgame01/cfg/yolov3-custom.cfg backup/yolov3-custom_final.weights /Users/fredu/Desktop/handball/dataset/handballgame01/thumb0298.jpg 
