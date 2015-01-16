# docker-ubuntu-init
docker ubuntu images which execute init scripts

this Docker image start from ubuntu:14.04 and a startup which:
- executes ordered /config/init* files
- forward signals to them when receive ones

the default CMD is also the main script :
` CMD /config/starter.sh `

## image is automatically built on docker public registry from both master and dev branches
`https://registry.hub.docker.com/u/fvigotti/docker-ubuntu-init/`

* fvigotti/docker-ubuntu-init:latest => *master*
* fvigotti/docker-ubuntu-init:dev => *dev*

### DEBUG:
`
docker run --rm -ti fvigotti/docker-ubuntu-init:dev /bin/bash
`









-dev
