#!/bin/bash


# flacman  created by loictlpk on github is designed to search flac description for a linux command
# USE ==>       ./flacman  <CMD>  ( <FLAC> )


# #### PROGRAM ####
clear

if [ "$#" -eq 1 ]
then
        man $1

fi
if [ "$#" -gt 1 ]
then
        echo "search description for flac \"-$2\" with command \"$1\""
        for((count=0; count<3; count++)); do
                echo -n "."
                sleep 0.5
        done
        clear

        echo "search description for flac \"-$2\" with command \"$1\""

        for((count=0; count<3; count++)); do
        echo
        done
        for((count=0; count<11; count++)); do
                echo -n "-"
        done
echo
# ################ COMMAND ################
        man $1 | grep "\-$2"
#
echo
        for((count=0; count<11; count++)); do
                echo -n "-"
        done
        for((count=0; count<3; count++)); do
        echo
        done
fi