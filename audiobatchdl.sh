#!/bin/bash
OLD_IFS=$IFS
IFS=$'\n'
let line_counter=0
for line in $(cat "./ytlinks.txt"); do
let line_counter=$(($line_counter+1))
printf "${line_counter}: ${line}\n"
youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 "${line}"
done
IFS=$OLD_IFS
