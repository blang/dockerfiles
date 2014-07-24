NS = blang
REPO = java6builder
NAME = java6builder

#PORTS = -p 2222:22 -p 80:80 -p 3212:3212
VOLUMES = -v /tmp/data:/data

.PHONY: build shell run start stop stoprm rm

build: 
	docker build -t $(NS)/$(REPO) .

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(NS)/$(REPO) /bin/bash

run:
	docker run --rm --name $(NAME) $(PORTS) $(VOLUMES) $(NS)/$(REPO)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(NS)/$(REPO)

stop: rm
	docker stop $(NAME)

rm:
	docker rm $(NAME)

default: build