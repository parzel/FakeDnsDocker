#!/bin/sh

docker build . -t fakedns
docker run -it -P -v $(realpath config):/root/config --privileged --expose 53 -t fakedns