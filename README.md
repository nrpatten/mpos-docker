MPOS Docker Testing Container.

Please note all data will be lost if you destroy this container.    
This container is for testing only do not use it in production.

    Install:
        docker pull nrpatten/mpos-docker
        docker run -itd -p 80:80 -p 3333:3333 nrpatten/mpos-docker
        this will expose port 80 and 3333 to your network
        You will be able to http://yourboxip/ for MPOS 
        and stratum+tcp://yourboxip:3333 for stratum

    To ssh into the container run
        docker ps
        docker inspect -f '{{ .NetworkSettings.IPAddress }}' CONTAINER ID
        ssh dockerip username: root pass: root

    Or login with Docker run:
        docker ps
        And add your CONTAINER ID
        eg: docker exec -it 013ca0ec7315 /bin/bash


Build your own Git repo and docker repo

    Build:
        git clone https://github.com/nrpatten/mpos-docker mpos
        cd mpos
        docker pull nrpatten/ubuntu-mpos-base
        docker build -t nrpatten/mpos .
        docker run -itd -p 80:80 -p 3333:3333 nrpatten/mpos
        this will expose port 80 and 3333 to your network
        You will be able to http://yourboxip/ for MPOS
        and stratum+tcp://yourboxip:3333 for stratum

    To ssh into the container run
        docker ps
        docker inspect -f '{{ .NetworkSettings.IPAddress }}' CONTAINER ID
        ssh dockerip username: root pass: root

    Or login with Docker run:
        docker ps
        And add your CONTAINER ID
        eg: docker exec -it 013ca0ec7315 /bin/bash
        


|  **REPOSITORY** | **TAG** | **IMAGE ID** | **CREATED** | **VIRTUAL SIZE** |
|-----------------|---------|--------------|-------------|-----------------------------------|
|nrpatten/mpos              | latest       |  mpos       |  About an hour ago  |   871.7 MB  |
|nrpatten/ubuntu-mpos-base  | latest       |  mpos-base  |  About an hour ago  |   164.3 MB  |

