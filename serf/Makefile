NS = blang
REPO = smartstack-serf
NAME = smartstack-serf
INSTANCE = default
PORTS = -p 7946
VOLUMES = -v /tmp/etcddata:/data

.PHONY: build shell run start stop stoprm rm

build:
	docker build -t $(NS)/$(REPO) .

shell:
	docker run --rm --name $(NAME)-$(INSTANCE) -i -t $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO) /bin/bash

run:
	docker run --rm --name $(NAME)-$(INSTANCE) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO)

start:
	docker run -d --name $(NAME)-$(INSTANCE) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO)

stop:
	docker stop $(NAME)-$(INSTANCE)

rm:
	docker rm $(NAME)-$(INSTANCE)

default: build