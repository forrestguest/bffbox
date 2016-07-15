#!/bin/sh
# bffbox.sh -- version 2016-07-14
#
# Copyright 2016 Forrest Guest and licensed
# "public domain" style under
# [CC0](http://creativecommons.org/publicdomain/zero/1.0/): 
# 
# To the extent possible under law, the contributors to this project have
# waived all copyright and related or neighboring rights to this work.
# In other words, you can use this code for any purpose without any
# restrictions.  This work is published from: United States.

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Write PID of running script to /tmp/blink.pid
echo $$ >/tmp/bffbox.pid

while :
do
mplayer -cache 750 -cache-min 70 -loop 0 http://stream.bff.fm/listen.mp3
done