#!/bin/zsh

sudo certbot certonly --noninteractive --agree-tos --expand -m v@viktorh.net -d viktorh.net --webroot -w /home/viktor/viktorh
sudo certbot certonly --noninteractive --agree-tos --expand -m v@viktorh.net -d viktor.pictures --webroot -w /home/viktor/watercolor
sudo certbot certonly --noninteractive --agree-tos --expand -m v@viktorh.net -d helena.cool --webroot -w /home/helena/webs
sudo service nginx reload
