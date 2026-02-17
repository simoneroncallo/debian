# docker (sudo)
docker pull debian:trixie # Pull image

docker run -dit --name <container-name> debian:trixie # Create image
docker start <container-name> # Start container
docker exec -it <container-name> bash # Run bash
exit # Exit

docker logs <container-name>

docker ps -a # List containers
docker images # List images

docker stop <container-name> # Stop container 
docker rm <container-name> # Remove container
docker rmi debian:trixie # Remove image
