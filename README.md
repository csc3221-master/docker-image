# docker-image
Dockerfile and instructions to create a Linux System with required tools

## Prerequisites
- Install [Docker](https://www.docker.com/get-started) in your computer
- Have a [GitHub](https://github.com/) account with your SPU email
- Have the [Student Developer Pack](https://education.github.com/pack) from GitHub 
- Download this repository into your computer

## How to install
1. Open a terminal window
1. Using `cd` move into the directory where you downloaded this repository
1. Run the following command: `docker build --build-arg user=spu-user -t ubuntu-csc2430-development . ` Notice that there is a period at the end!

When you run the previous command, Docker is going to create a Linux Image in your computer using the predefined configuration given to you in the repository. After finishing the installation you can open your recently created Docker instance with the following steps:
1. Run the command `docker images`. This command will show you the images you have created. Notice the image that is called node-development, copy the Image ID.
1. To start your Docker image (is like starting a computer inside your computer) run the following command: `docker run -p 3000:3000 -i -t 11111 /bin/bash`. Remember to change 11111 to your own Image ID that you copied in the previous step.


