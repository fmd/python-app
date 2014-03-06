from phusion/baseimage
maintainer Fareed Dudhia <fareeddudhia@gmail.com>

run apt-get update -q && apt-get install -qy python-pip python-dev 
add . /app 
run exec /app/install.sh

cmd ["/sbin/my_init -- python /app/app/app.py"]
expose 5000
