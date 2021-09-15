#!/bin/bash
echo "press 1 for lowercase"
echo "press 2 for upper case"
echo "press 3 for Captilizing first letter of each word"
read num;
if [ $num = 1  ]
then
        echo "enter file name or location of lowercase file"
        read file;
        dd if=$file of=$file.lowercase conv=lcase
elif [ $num = 2  ]
then
        echo "enter file name or location of uppercase file"
        read file;
        dd if=$file of=$file.uppercase conv=ucase
elif [ $num = 3  ]
then
        echo "Enter the filename or location of file which we want to Captilize"
        read file;
        sed -e "s/\b\(.\)/\u\1/g" $file > $file.captilizeeachword
        #\b is word boundry \u uppercase
else
        echo "you have entered wrong number"
fi
