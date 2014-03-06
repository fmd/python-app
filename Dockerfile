from phusion/baseimage
maintainer Fareed Dudhia <fareeddudhia@gmail.com>

run apt-get update -q && apt-get install -qy python-pip python-dev build-essential
add . /app 
run exec /app/install.sh
