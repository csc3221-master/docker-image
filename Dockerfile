FROM ubuntu:18.04
MAINTAINER Carlos R. Arias <arias@spu.edu>

ARG user=student

# Install all required packages for 
# Data Structures I image, C++ Compiler, valgrind, gdb, ncurses libraries
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
	build-essential \
	clang \
	cmake \
	g++ \
	gcc \
	gdb \
	libncurses5 libncurses5-dev \
	make \
	sudo \
	valgrind \
	vim  \
	openssh-server \
	rsync


# Expose port 22 to allow connection from CLion
EXPOSE 22

# Create a user to access through SSH from CLion
RUN useradd -m $user && echo "$user:$user" | chpasswd && adduser $user sudo

# Create a volume to connect a local directory to a directory in the image
VOLUME /development

# Setup starting script to start SSH server
RUN echo "clear" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc  \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo Welcome $user to your Docker Container!!" >> ~/.bashrc \
	&& echo "echo ----------------------------------------" >> ~/.bashrc \
	&& echo "echo       Computer Science Rocks" >> ~/.bashrc \
	&& echo "echo ----------------------------------------" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "echo" >> ~/.bashrc \
	&& echo "service ssh start" >> ~/.bashrc

