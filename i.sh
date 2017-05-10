#!/bin/sh
echo 0
str='http://www.ledo.com/cut-string.html'
echo $str
echo 1
echo ${str#*//}
echo 2 
echo ${str##*/}
echo 3
echo ${str%/*}
echo 4
echo ${str%%/*}
echo 5
echo ${str:5}
echo 6
echo ${str:7}
echo 7
echo ${str:0-15:10}
echo 8
echo ${str:0-4}
echo 9
echo 10
echo 11
