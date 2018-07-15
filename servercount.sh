#!/bin/bash
dt=`date '+%d-%m-%Y_%H:%M:%S'`
file=`cat serverlog.txt |awk '{print $1}'`
file1=`cat serverlog.txt | awk '!a[$0]++' | awk '{print $1}'`
if [ -f serverlogsort.txt ]
then
  mv serverlogsort.txt serverlogsort.txt_$dt
fi
for serv in $file1
do
  count=0
  for serv1 in $file
  do
    if [ "$serv1" = "$serv" ]
    then
      ((count++))
    fi
  done
  echo "The Server $serv get $count requests" >> serverlogsort.txt
done

