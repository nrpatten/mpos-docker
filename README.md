# mpos-docker
-------------

Git repo and docker repo
* Build:
 * `git clone https://github.com/nrpatten/mpos-docker mpos`
 * `cd mpos`
 * `docker pull nrpatten/ubuntu-mpos-base`
 * `docker build -t nrpatten/mpos .`
 * `docker run -itd -p 80:80 -p 3333:3333 nrpatten/mpos` this will expose port 80 and 3333 to your network
 * You will be able to http://yourboxip/ for MPOS and stratum+tcp://yourboxip:3333 for stratum
* To log into the container run
 * ssh docker ip `username: root`  `pass: root`
* Or run:
 * `docker ps`
 * And add your `CONTAINER ID`
 * eg: `docker exec -it 013ca0ec7315 /bin/bash`
