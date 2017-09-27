#!/bin/bash

cd /home/julien/Documents/Sending_images_to_server/From_camera

pwd

#we will need one image only
#fswebcam -d /dev/video1 -r 1920x1080 --jpeg 90 -F 5 /home/julien/CNN_Project/From_camera/Classify/to_classify.jpg

#in case we copy many instaces of the snaps
fswebcam -d /dev/video1 -r 1920x1080 --jpeg 90 -F 5 /home/julien/Documents/Sending_images_to_server/From_camera/$(date +\%Y\%m\%d\%H\%M).jpg

last_pic=$(ls -t | grep '\>.jpg' | head -1)

scp /home/julien/Documents/Sending_images_to_server/From_camera/$last_pic julien@wits.rklein.me:/home/julien/CNN_Project/From_camera/Classify
