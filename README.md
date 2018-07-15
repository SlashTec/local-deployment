# Local Dev environment 
# Created by Bashar Shannak 


Prerequisite technology Stack on your laptop 

1- Ansible.

2- Docker.

3- Vagrant.

To run the server application hello-dropwizard please clone or download the repository at your machine. 

To test the example application run the following commands

inside the project root directory :

vagrant up

I mapped the port to be 7000 instead of 8080, so please after the installation finish please use

http://localhost:7000/hello-world
http://localhost:7000/hello-world?name=World

and you can SSH inside the docker container by 

ssh root@127.0.0.1 and please use "bashar123" as password
 
How the application work: 

Vagrantfile will use Dockerfile and ansible/run.yml to create the environment 
Dockerfile will download ubuntu image, install all the required configration and ADD the code of hello-dropwizard to /tmp

Ansible roles to create the following: 
  - Java 
  - Maven 
  - project build 

 
Sorry i couldn't show you the htto routing as i had several meetings with my team and couple of clients. but i will use a proxy to do the http routing and i prefer nginx over express (nodejs) as it can has more features. If i have time tomrrow i will install nginx through ansible with the right configuration. 

Sorry but my time was really limited.

Best Regards 
Bashar Shannak 
