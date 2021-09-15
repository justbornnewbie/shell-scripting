#!/bin/bash
echo "below files are present in /tmp"
ls /tmp
echo "if you want to delete temp file then type yes"
read a;
if [ $a = yes  ]
then
        cd /tmp
        rm -rf *
        echo "we have deleted all the files of tmp"
else
        echo "you have typed wrong word, please try again"
fi
