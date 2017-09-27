#!/bin/bash

#to kill all types of running jobs
crontab -r

#to have my custom crontab to run instead
crontab -u julien ~/Documents/Sending_images_to_server/julien_crontab

#to activate my job, page will open, (nano)
crontab -e

