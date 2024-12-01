# Env setup

1. Clone repo via ssh `git clone git@github.com:kadza/home-automation-dev.git`
2. Clone submodules `git submodule update --init --recursive`
3. Configure .env based on .env_template
4. Run `./admin-init.sh`
5. In a browser http://localhost:1880
6. Configure github repository and credentials password
   To get the credentials, connect to server `ssh luke@192.168.0.170` and `cat repos/home-automation-prod/.env | more`
7. Download dependencies

# TODO

document .env

I had to create a builder. Why what for?
docker buildx create --use --buildkitd-flags '--allow-insecure-entitlement network.host'

Read and document how to build docker for multi-platforms with qemu emulator
ERROR: failed to solve: process "/dev/.buildkit_qemu_emulator
https://github.com/docker/buildx/issues/464
https://www.docker.com/blog/multi-platform-docker-builds/
github action does it

# Misc

## Auto restart

- docker auto-restart https://amalgjose.com/2021/02/12/how-to-enable-auto-restart-of-a-docker-container-on-system-reboot/
- Dell Wyse 5070 Power management -> AC recovery -> Power on after AC loss
