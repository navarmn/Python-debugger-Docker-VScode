
install:
	docker build --rm -t $(notdir $(shell pwd)) .
debug:	
	docker run --rm -d -p 3000:3000 -v $(CURDIR):/app --name debugging-$(notdir $(shell pwd)) $(notdir $(shell pwd))
	# It is ugly, I know. But something the container wasn't attaching to the remote file
	sleep 0.5
shell:	
	docker run -it -p 3000:3000 -v $(CURDIR):/app $(notdir $(shell pwd)) /bin/bash

