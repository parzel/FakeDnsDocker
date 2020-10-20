#!/bin/sh

docker build . -t fakedns
docker run -it -P -v $(realpath config):/root/config --privileged -p 53:53/udp -t fakedns
