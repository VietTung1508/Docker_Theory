1. What's Docker?

- Virtualization software

2. Why was it created?

- Make developing and deploying applications much easier

- Packages application (in container) with all the necessary dependencies, configuration, system tools and runtime

- Because it boxed an application you can basically easily shared and distributed it

3. What problem does it solve?

- Before Docker every dev in the teem need to install many services depend on the application and the process can be very tidious

- But thank to Docker because the own isolated enviroment (container) packages with all dependencies and config we now don't need to download any of that services but rather just start services as a Docker container using a Docker command which fetched container package from internet and started in your owm machine

- Command same for all OS (Mac , Windown) and also same for all services for example your javascript app have 10 service you will just need to run each service from docker

- Easy to run different versions of same app without any conflicts

- Easy for OS team to deploy it to server

4. Image and Container in Docker

- Docker Image is basically an executable application artifact that includes app source code but also complete enviroment configuration

- Docker Container is a running instance of an image -> that when the container enviroment is created

- From one image you can run multile container

5. Docker Registry

- Docker Registry is a storage and distribution system for Docker images

- To get an image to your local machine we use "docker pull {image_name}:{image_tag}"

6. Run an image in a container

- To run a image we use "docker run {image_name}:{image_tag}" this will creates a container from given image and starts it

- To view logs from service running inside the container we use "docker logs{container}"

- To block log from service running we use flas -d when run a container "docker run -d {image_name}:{image_tag}"

7. Port Binding

- Application inside container runs in an isolated Docker network so we basically cannot access it from our local computer browser

- So to be able to access it we need to expose the container port to thehost (machine that the container runs on)

- To binda port we like to container port we use flag -p "docker run -p 9000:80 {image_name}:{image_tag}"

- Only 1 service can run on a specific port on the host (for example only 1 service can run on port 9000)

8. Start and Stop Container

- Docker create a new container every time we use "docker run" and it doesn't re-use previous container

- To list all container (stopped and running) we use flag -a "docker ps -a"

- To stop a container we use "docker stop {container_id}"

- To start a container (which we used before and stop) we use "docker start {container_id}"

- To assign a container name (insted of rely to id we can rely to name that we remembered) we use flag --name "docker run --name web-app -p {Host_Port}:{Service_Port} {image_name}:{image_tag} "

8. Build Dockerfile in our application

- To create our image first we need to create a "defination" of how to build an image from our application -> and that "defination" is written in a file called Dockerfiles (text document that contains commands to assemle an image)

- Each Docker image is actually based from a parrent image or "base image". You choose the base image , depending on which tools you need to have avaiable

- Dockerfiles must begin with a FROM instruction and it's use to build image from the specifed image

- RUN will execute any command in a shell (npm i for instance) inside the container enviroment

- COPY will copies files or directories from <src> and adds them to filesystem of the container at the path <dest>

- WORKDIR will sets the working directory for all following commands

- CMD is the instruction that is to be executed when a Docker container starts

- While "RUN" is executed in the container , "COPY" is executed on the host

9. Build Docker Image

- To build Docker Image we use "docker build -t {image_name}:{image_tag} {dockerfiles location}" with flag t to declare our app name and tag
