# Resource Files

## Resource 1 : Install Docker Engine v20.10.8 and Docker Compose v.1.29.2

### Docker on Linux Overview
* Easiest install/setup, best native experience
* Three main ways to install: script, store, or ```docker-machine```
* get.docker.com script (Latest Edge Release)
	* ```curl -sSL https://get.docker.com/ | sh```
* store.docker.com has instructions for each distro
* RHEL officially only supports Docker EE (paid), but CentOS will work
* Installing in a VM, Cloud Instance, all are the same process
* May not work for unlisted distros (Amazon Linux, Linode Linux, etc.)

### Install Docker engine
* Navigate to ```https://get.docker.com/``` to view the script
* This script is meant for quick & easy install via:
	* ```curl -fsSL https://get.docker.com -o get-docker.sh```
	* ```sh get-docker.sh```
* Add user to docker group to use docker without sudo -> ```sudo usermod -aG docker <useraccount>```
* Log out and log back in in order for that change to take effect
* Check Docker version
```
╰─➤  docker version
Client: Docker Engine - Community
 Version:           20.10.8
 API version:       1.41
 Go version:        go1.16.6
 Git commit:        3967b7d
 Built:             Fri Jul 30 19:54:22 2021
 OS/Arch:           linux/amd64
 Context:           default
 Experimental:      true

Server: Docker Engine - Community
 Engine:
  Version:          20.10.8
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.16.6
  Git commit:       75249d8
  Built:            Fri Jul 30 19:52:31 2021
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.4.9
  GitCommit:        e25210fe30a0a703442421b0f60afac609f950a3
 runc:
  Version:          1.0.1
  GitCommit:        v1.0.1-0-g4144b63
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0

```

### Install Docker Machine and Compose
* Script installs Docker Machine v0.16.2 and Docker Compose v1.29.2
* To install the latest version checkout the version form the release pages on github repo and replace the version number in the script
```
$ wget -O dockerInstall.sh https://raw.githubusercontent.com/vishalcoderathore/Resources/master/dockerInstall.sh
$ sudo chmod 777 dockerInstall.sh
$ ./dockerInstall.sh
```

## Resource 2 : Docker Commands

Access Link : [View Document](https://docs.google.com/document/d/1Rzc0hN0T3padm_zEuIG1H88NdbeD3IHtFoZ1E90bygw/edit?usp=sharing)

## Resource 3 : Deploy and Run static website on NGINX Docker Image

This is a demo to deploy a static website on the cloud or local machine using Docker image of Nginx. The Docker image created then can be pushed to Docker Hub for later use on a different machine.

Note : This is a quick step-by-step guide to deploy the static site on AWS EC-2 instance. I have used 3 files for the purpose.

File 1 : Server.conf (Create a file called server.conf and paste in the following code)

```
server {
        listen 80;
        server_name <Enter IP address of the cloud instance here>;
        root /usr/share/nginx/html/Galappear;
        index index.html;
}
```

File 2 : Dockerfile (Paste in the following code to get Docker file, feel free to edit according to your needs)

```
$ wget -O Dockerfile https://raw.githubusercontent.com/vishalcoderathore/Resources/master/Dockerfile
```

File 3 : Zipped File containing static website (My zipped file is called Galappear.tar.gz, feel free to use this one)

```
$ wget -O Galappear.tar.gz https://raw.githubusercontent.com/vishalcoderathore/Resources/master/Galappear.tar.gz
```

Instructions to use these files and deploy

```
Step 1 : Create Cloud Instance
Step 2 : Update Server.conf with the new Cloud Instance IP address
Step 3 : Copy zipped website file, server.conf, dockerfile to the instance
Step 4 : ssh into cloud instance
Step 5 : Install Docker - follow Resource 1 section to install Docker
Step 6 : Build Docker Custom Image              -> docker build -t static-app:v1 .
Step 7 : Run docker container with custom image -> docker run -d --name app-container -p 80:80 static-app:v1
Optional : After Step 7 you can push your image to the Docker Hub
```

## Resource 4 : Git Cheat Sheet

Access Link : [View Document](https://github.com/vishalcoderathore/Resources/blob/master/git-cheat-sheet.md)

## Resource 5 : URL Validator
Acces Link : [View Document](https://github.com/vishalcoderathore/Resources/blob/master/URLValidaror.js)
