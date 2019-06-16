#!/bin/bash

echo "writing data to $1/$(hostname)-$(hostname -I | awk '{print $1}').log..."
while true
do
    echo $(date) >> $1/$(hostname)-$(hostname -I | awk '{print $1}').log
    sleep 5
done
