#!/bin/bash
echo "1. Press 1 for memory usage"
echo "2. press 2 for disk usage"
read a;
if [ $a = 1  ]
then
        echo "Memory usage is:"
        echo "==================="
        free -h
elif [ $a = 2  ]
then
        echo "Disk usage is:"
        echo "================"
        df -hT
fi
