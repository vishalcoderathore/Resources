# Resource Files

## Resource 1 : Install Latest Docker CE and Docker Compose v.1.22.0

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
