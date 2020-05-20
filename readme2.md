![Docker logo](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/docker_logo.png)

## Docker - Containerization Platform

#### Webinar at 

### [P.Dr. V. V. P. College of Engineering, Ahmednagar](http://enggnagar.com/), 
#### 23 May 2020

#### [Anant Gadekar](https://www.linkedin.com/in/anant-gadekar-22857319/) 
###### System Engineer(DevOps Engineer) STL - Sterlite Technology Limited 
#### RHCSA, RHCE, Docker, K8S, Openshift Administrator, AWS, Coporate Trainer
________________________



---

### Let me ask you

- Why Docker?
- What is need of containerization?
- Who knows about [Docker](http://docker.com)?
- Steps of a Docker workflow
- Common Docker Commands
- Docker examples
- Docker Alternatives
- Instead of Resources
- Q&A
- Online Lab

---

### Why Docker - 
> Traditional Trasport

![Traditional Transport](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/cargo.png)

---

### Traditional Trasport Solution


![Traditional Transport Solution ](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/cargosolution.png)

---

### Traditional Application


![Traditional Application ](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/dockersolution.png)

---

### Traditional Application Solution


![Traditional Application Solution ](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/cargosolution.png)

---

### What is Docker 

> Docker is an open platform for developing, shipping, and running applications.

> Docker allows you to package an application with all of its dependencies into a standardized unit for software development.

---

### Docker vs VMs

![Docker vs traditional Virtualization](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/dockerVsVM.png)

---

### Docker History

 - Solomon Hykes ([@solomonstre](https://twitter.com/solomonstre))
 - dotCloud (now Docker Inc)
 - March 2013
 - Apache 2.0 license
 - 30k stars on Github
 - 260k public repositories on hub.docker.com
 - Docker Inc acquires everyone <small><sup>TM</sup></small>
 - Docker joins the "[Open Container Initiative](https://www.opencontainers.org/)", June 2015

---

### Docker Benefits

 - Fast (deployment, migration, restarts)
 - Secure
 - Lightweight (save disk & CPU)
 - Open Source
 - Portable software
 - Microservices and integrations (APIs)
 - Simplify DevOps
 - Version control capabilities

---

### Common Docker usages

 - Sandbox environment (develop, test, debug, educate)
 - Continuous Integration & Deployment
 - Scaling apps
 - Development collaboration
 - Infrastructure configuration
 - Local development
 - Multi-tier applications
 - PaaS, SaaS

###### See the [survey results for 2016](https://www.docker.com/survey-2016)

---

### Technology behind Docker

 - Linux [x86-64](https://www.wikiwand.com/en/X86-64)
 - [Go](https://golang.org/) language
 - [Client - Server](https://www.wikiwand.com/en/Client%E2%80%93server_model) (deamon) architecture
 - Union file systems ([UnionFS](https://www.wikiwand.com/en/UnionFS): AUFS, btrfs, vfs etc)
 - [Namespaces](https://en.wikipedia.org/wiki/Cgroups#NAMESPACE-ISOLATION) (pid, net, ipc, mnt, uts)
 - Control Groups ([cgroups](https://www.wikiwand.com/en/Cgroups))
 - Container format ([libcontainer](https://github.com/opencontainers/runc/tree/master/libcontainer "Libcontainer provides a native Go implementation for creating containers with namespaces, cgroups, capabilities, and filesystem access controls. It allows you to manage the lifecycle of the container performing additional operations after the container is created."))

###### See more at [Understanding docker](https://docs.docker.com/engine/understanding-docker/)

---

### The Docker architecture

![Docker architecture](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/architecture.svg)
###### See more at [Understanding docker](https://docs.docker.com/engine/understanding-docker/)

---

### Docker components

 - (Docker) client
 - daemon
 - engine
 - machine
 - compose
 - swarm
 - registry

---

### Docker client

It is the primary user interface to Docker. It accepts commands from the user
and communicates back and forth with a Docker daemon.

---

### Docker daemon

It runs on a host machine. The user does not directly interact with the daemon,
but instead through the Docker client with the RESTful api or sockets.

---

### Docker engine

A Client with a Daemon as also as the docker-compose tool. Usually referred simply as "docker".

---

### Docker machine

![Docker machine logo](https://raw.githubusercontent.com/theodorosploumis/docker-presentation/gh-pages/img/docker_machine.png)

A tool which makes it really easy to create Docker hosts on your computer,
on cloud providers and inside your own data center.
It creates servers, installs Docker on them, then configures the Docker client to talk to them.
Required for Mac, Windows users.

---

### Docker compose

![Docker compose logo](https://raw.githubusercontent.com/theodorosploumis/docker-presentation/gh-pages/img/docker_compose.png)

A tool for defining and running complex applications with Docker
(eg a multi-container application) with a single file.

---

### Docker swarm

![Docker swarm logo](https://raw.githubusercontent.com/theodorosploumis/docker-presentation/gh-pages/img/docker_swarm.png)

A native clustering tool for Docker. Swarm pools together several Docker
hosts and exposes them as a single virtual Docker host. It scale up to multiple hosts.

---

### Docker distribution

![Docker distribution logo](https://raw.githubusercontent.com/theodorosploumis/docker-presentation/gh-pages/img/docker_distribution.png)

A (hosted) service containing repositories of images which responds to the Registry API.

---

### Steps of a Docker workflow

```
docker run -i -t -d centos /bin/bash
```

 - Pulls the centos:latest [image](https://docs.docker.com/engine/userguide/containers/dockerimages/ "A read-only layer that is the base of your container. It can have a parent image to abstract away the more basic filesystem snapshot.") from the [registry](https://docs.docker.com/registry/ "The central place where all publicly published images live. You can search it, upload your images there and when you pull a docker image, it comes the repository/hub.")
 - Creates a new [container](https://docs.docker.com/engine/userguide/storagedriver/imagesandcontainers/ "A runnable instance of the image, basically it is a process isolated by docker that runs on top of the filesystem that an image provides.")
 - Allocates a filesystem and mounts a read-write [layer](https://docs.docker.com/engine/reference/glossary/#filesystem "A set of read-only files to provision the system. Think of a layer as a read only snapshot of the filesystem.")
 - Allocates a [network/bridge interface](https://www.wikiwand.com/en/Bridging_%28networking%29 "")
 - Sets up an [IP address](https://www.wikiwand.com/en/IP_address "An Internet Protocol address (IP address) is a numerical label assigned to each device (e.g., computer, printer) participating in a computer network that uses the Internet Protocol for communication.")
 - Executes a process that you specify (``` /bin/bash ```)
 - Captures and provides application output

---

### The docker image

![Centos:latest image](https://raw.githubusercontent.com/gadekaranant/DemoDocker/gh-pages/img/image-layers.jpg "A read-only layer that is the base of your container. It can have a parent image to abstract away the more basic filesystem snapshot. Each Docker image references a list of read-only layers that represent filesystem differences. Layers are stacked on top of each other to form a base for a container’s root filesystem.")

---


### The Dockerfile

> A Dockerfile is a text document that contains all the commands a user could call on the command line to create an image.

 - [Dockerfile with inline comments](https://github.com/gadekaranant/DemoDocker/blob/gh-pages/examples/dockerfile/Dockerfile) just for education
 - [Dockerfile reference](https://docs.docker.com/engine/reference/builder/) on docker docs
 - Official Dockerfiles ([rails](https://github.com/docker-library/rails/blob/master/Dockerfile), [nodejs](https://github.com/ReadyTalk/nodejs-docker/blob/master/base/Dockerfile), [django](https://github.com/docker-library/django/blob/master/3.4/Dockerfile), [Drupal](https://github.com/docker-library/drupal/blob/master/8.1/fpm/Dockerfile))

---

### Common Docker Commands

```
// General info
man docker // man docker-run
docker help // docker help run
docker info
docker version
docker network ls

// Images
docker images // docker [IMAGE_NAME]
docker pull [IMAGE] // docker push [IMAGE]

// Containers
docker run
docker ps // docker ps -a, docker ps -l
docker stop/start/restart [CONTAINER]
docker stats [CONTAINER]
docker top [CONTAINER]
docker port [CONTAINER]
docker inspect [CONTAINER]
docker inspect -f "{{ .State.StartedAt }}" [CONTAINER]
docker rm [CONTAINER]

```

---

### Docker examples

- SSH into a container
- Docker [Volume](https://docs.docker.com/engine/userguide/containers/dockervolumes/)
- [Linked](https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/) containers
- Using [docker-compose](https://docs.docker.com/compose/)
- Scale containers with docker-compose
- Share an image (share this presentation)
- Package an app with its environment
- Screen and sound within containers (x-forward)

---

### Example: SSH into a container

```
docker pull centos
docker run -it --name centos_example centos /bin/bash
```

---

### Example: Docker volume

Let's use [Apache server](https://bitbucket.org/EdBoraas/apache-docker/src/)

```
cd ~/Docker-presentation
mkdir /home/anant/demo
cd demo

docker pull eboraas/apache
docker run -it -d --name=myos 
    -p 8180:80 
    -v /home/anant/demo:/usr/local/apache2/htdocs 
    httpd:2.4

// Locally create an index.html file

echo "It works using mount." >> index.html

// Open http://localhost:8180 to view the html file
```

---

### Example: Docker link containers

Let's create a Wordpress (apache, php, mysql, wordpress)

```
cd ~/Docker-presentation
mkdir /home/anant/mysqldata and mkdir /home/anant/wordpress
cd wordpress
copy wordpress.tar

docker load -i wordpress.tar

docker volume create mysql_storage
docker pull mysql:5.5

// Start a container for mysql
docker run --name mysql1 -it -d
      -e MYSQL_USER=user1 
      -e MYSQL_PASSWORD=test 
      -e MYSQL_DATABASE=mydata1 
      -e MYSQL_ROOT_PASSWORD=redhat 
      -v mysql_storage:/var/lib/mysql 
      mysql:5.7

// Start a Wordpress container and link it with mysql
// Usage: --link [name or id]:alias
docker run -it -d 
      -e WORDPRESS_DB_HOST=mysql1 
      -e WORDPRESS_DB_PASSWORD=redhat 
      -e WORDPRESS_DB_NAME=mydata1 
      -p 8081:80 
      -v /home/anant/wordpress/html:/var/www/html 
      --link mysql1 
      wordpress

// Open http://localhost:8081 to continue with the installation
// On the db host use: mysql

// There is a proper linking
docker inspect -f "{{ .HostConfig.Links }}" drupal_example
```

---

### Example: Using Docker Compose

Let's create a Drupal app with [docker-compose.yml](https://github.com/theodorosploumis/docker-presentation/blob/gh-pages/examples/docker-compose/docker-compose.yml)

```
cd ~/Docker-presentation
git clone git@github.com:theodorosploumis/docker-presentation.git
cd docker-presentation/examples/docker-compose

// Run docker-compose using the docker-compose.yml
cat docker-compose.yml
docker-compose up -d
```

---

### Docker tips

There are known best practices (see a list at [examples/tips](https://github.com/theodorosploumis/docker-presentation/tree/gh-pages/examples/tips))

- Optimize containers (check [fromlatest.io](https://www.fromlatest.io/) and [imagelayers.io](https://imagelayers.io))
- Create your own tiny base
- Containers are not Virtual Machines
- Full stack Images VS 1 process per Container
- Create your private registry
- Create shortcut commands
- Use docker-compose.yml templates (see why at [lorry.io](https://lorry.io/))
- Be aware of the hub.docker.com docker agent version

---

### The Docker war

| Type | Software |
|:----:|----------|
| Clustering/orchestration | [Swarm](https://docs.docker.com/swarm/), [Kubernetes](http://kubernetes.io/), [Marathon](https://mesosphere.github.io/marathon/), [MaestroNG](https://github.com/signalfx/maestro-ng), [decking](http://decking.io/), [shipyard](http://shipyard-project.com/) |
| Docker registries | [Portus](http://port.us.org/), [Docker Distribution](https://github.com/docker/distribution), [hub.docker.com](http://hub.docker.com), [quay.io](https://quay.io), [Google container registry](https://cloud.google.com/tools/container-registry/), [Artifactory](https://www.jfrog.com/artifactory/), [projectatomic.io](http://www.projectatomic.io/) |
| PaaS with Docker | [Rancher](http://rancher.com/), [Tsuru](https://tsuru.io/), [dokku](https://github.com/dokku/dokku), [flynn](https://flynn.io/),  [Octohost](http://octohost.io/), [DEIS](http://deis.io/) |
| OS made of Containers | [RancherOS](http://rancher.com/rancher-os/) |

---

### Docker Alternatives

- [Rocket, rkt](https://github.com/coreos/rkt)
- [Linux Containers, LXC](https://linuxcontainers.org/)
- [Linux container hypervisor, LXD](http://www.ubuntu.com/cloud/lxd)
- [BSD Jails](https://www.freebsd.org/doc/handbook/jails.html)
- [Solaris Zones](http://oracle.com/solaris)
- [drawbridge](http://research.microsoft.com/en-us/projects/drawbridge/)

---

### Instead of Resources

 - [Awesome Docker](https://github.com/veggiemonk/awesome-docker) (list of Docker resources & projects)
 - [Docker cheat sheet](https://github.com/wsargent/docker-cheat-sheet)
 - [Docker in Practice](https://www.manning.com/books/docker-in-practice), [The Docker Book](http://www.dockerbook.com/) (books)
 - [Docker aliases/shortcuts](https://github.com/theodorosploumis/docker-presentation/tree/gh-pages/examples/shortcuts/docker-aliases.sh)
 - Docker [case studies](https://www.docker.com/customers)

---

### Questions?

![Pythons over Docker!](https://raw.githubusercontent.com/theodorosploumis/docker-presentation/gh-pages/img/docker_logo.png)



> Feel Free to Ask.


---

### Bonus!


>Online lab for Docker 


- [Docker Play](https://labs.play-with-docker.com/)
- [Katacoda Lab](https://www.katacoda.com/courses/docker)
- [Learn Docker](https://learndocker.online/)



