#! /bin/bash

#Uncomment script below upon initial setup
#cd ~
#sudo apt-get install -y ffmpeg
#sudo apt-get install -y lame
#sudo apt-get install -y youtube-dl
#sudo youtube-dl --update

subreddit="listentothis"
directory="~/Music"
cd $directory
sudo rm $subreddit

sudo wget -O $subreddit"_html" http://www.reddit.com/r/$subreddit
sudo chmod +rwx $directory/$subreddit"_html"
sudo cat $subreddit"_html" | grep -o "http://www\.youtube\.com/[^\"]\{1,50\}" > $directory/$subreddit"_links"

