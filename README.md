# Env setup

1. Setup vm with ssh access and connect with it via VSCode Remote Access. I do it like this: https://github.com/kadza/vm-template
2. Setup Docker. I do it like this this https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository and https://docs.docker.com/engine/install/linux-postinstall/
3. Add ssh-key to Github `ssh-keygen`
4. (Optional) it saves typing `eval $(ssh-agent -s) && ssh-add`
5. Clone repo via ssh `git clone git@github.com:kadza/home-automation-dev.git`
6. Clone submodules `git submodule update --init --recursive`
7. Configure .env based on .env_template
8. Run `./admin-init.sh`
9. Forward 1880 port to localhost
10. In a browser http://localhost:1880
11. Configure github repository and credentials password
12. Download dependencies

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

-   docker auto-restart https://amalgjose.com/2021/02/12/how-to-enable-auto-restart-of-a-docker-container-on-system-reboot/
-   Dell Wyse 5070 Power management -> AC recovery -> Power on after AC loss
