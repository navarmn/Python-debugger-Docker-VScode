install:
	docker build -t python-debug-docker:latest .
debug:
	docker run --rm -d -p 3000:3000 --name debugging python-debug-docker:latest
	# docker attach debugging
	# python hello.py 
	# python -m ptvsd --host localhost --port 3000 --wait -m hello.py
	# docker kill -t python-debug-docker:latest
shell:
	docker run -it -p 3000:3000/tcp python-debug-docker:latest /bin/bash

