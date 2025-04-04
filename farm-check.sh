cd /volume1/docker/farm-check
sudo docker pull ghcr.io/gamestailer94/farm-check:latest
sudo docker run --rm --privileged -v /dev:/dev ghcr.io/gamestailer94/farm-check:latest ALL >> farm-check-result.txt