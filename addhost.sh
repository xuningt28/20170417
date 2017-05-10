#!/bin/bash
flag=$(grep -w "###finish###" /etc/hosts |wc -l)

if [ "$flag"x  = "0"x ];then
      echo err
      cat ${PWD}/thost >> /etc/hosts
else
      echo ok
fi
