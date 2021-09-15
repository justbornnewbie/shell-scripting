#!/bin/bash
echo "Enter the file name"
read filename;
if [ -f $filename  ]
then
        echo "press 1 for counting line number"
        echo "press 2 for counting words"
        echo "press 3 for counting characters"
        read a;
        if [ $a = 1  ]
        then
        cat $filename | wc -l
        elif [ $a = 2  ]
        then
        cat $filename | wc -w
        elif [ $a = 3  ]
        then
        cat $filename | wc -c
        else
        echo " you have entered wrong number"
        fi

else
        echo "its not a file"
fi
