#!/usr/bin/bash

while getopts ":t:p:d:" opt; do
        case $opt in
        t)
         TARGET=$OPTARG
         ;;
        p)
         PORT=$OPTARG
         ;;
        d)
         DIRECTORY=$OPTARG
         ;;
        \?)
         echo "Invalid option:  -$OPTARG" >&2
         exit 1
         ;;
        :)
         echo "Option -$OPTARG requires an argument!" >&2
         exit 1
         ;;
    esac
done
echo $DIRECTORY

if [ -z $DIRECTORY ] 
then 
        DIRECTORY="/1"
fi
echo "ATTEMPTING TO CONNECT TO::    rtsp://$TARGET:$PORT$DIRECTORY\n"
echo
ffplay -rtsp_transport tcp "rtsp://$TARGET:$PORT$DIRECTORY"
