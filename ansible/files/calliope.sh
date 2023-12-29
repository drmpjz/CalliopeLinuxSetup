#!/bin/bash

progName="MYPROG.HEX"

if test -L /dev/disk/by-uuid/2702-1974
then
    echo "Calliope mini !+ Rev 2.1"
    target="/calli/cAm"
elif test -L /dev/disk/by-uuid/0123-4567
then 
    echo "Calliope mini Rev 2.1"
    target="/calli/cBm"
else
    echo "No Calliope detected"
    exit
fi

if ! test -d .archive_calli
then
    echo "Creating archive dir .archive_calli" 
    mkdir .archive_calli
else
    echo "Files will be saved in .archive_calli"
fi    

if test -f "$progName"
then
   cp "$progName" "$target"
   tstamp=$(date "+%Y%m%d-%H%M%S")
   mv "$progName" .archive_calli/"$progName"-"$tstamp"
   sudo umount "$target"
else
   echo "$progName to transfer to Calliope missing"
fi   
