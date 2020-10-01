#!/bin/sh

wget https://osm-download.etsi.org/ftp/osm-8.0-eight/install_osm.sh

chmod +x install_osm.sh

docker swarm init

./install_osm.sh  -y
