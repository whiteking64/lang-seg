docker_build:
	docker build -t konica/lang-seg .

docker_run:
	docker run -it --rm \
		--runtime nvidia \
		--network host \
		--volume $(PWD):/home/lang-seg \
		--volume /usr/local/cuda:/usr/local/cuda \
		--shm-size=2g \
		--workdir /home/lang-seg \
		--name lseg \
		--hostname lseg \
		konica/lang-seg /bin/bash
