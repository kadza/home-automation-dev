# Env setup
1. Setup vm with ssh access and connect with it via VSCode Remote Access. I do it like this: https://github.com/kadza/vm-template
2. Setup Docker. I do it like this this https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository and https://docs.docker.com/engine/install/linux-postinstall/
3. Add ssh-key to Github
4. Clone repo via ssh `git clone git@github.com:kadza/home-automation-dev.git`
5. Configure .env based on .env_template
6. Run `./admin-init.sh`
7. Forward 1880 port to localhost
8. In a browser http://localhost:1880
9. Configure github repository and credentials password
10. Download dependencies

# Remote deploy
To deploy to remote server run `./home-automation-prod/remote-deploy.sh`
## Setup
* https://forums.docker.com/t/docker-compose-through-ssh-failing-and-referring-to-docker-example-com/115165/10
* https://www.docker.com/blog/how-to-deploy-on-remote-docker-hosts-with-docker-compose/

# TODO
document .env

I had to create a builder. Why what for?
docker buildx create --use --buildkitd-flags '--allow-insecure-entitlement network.host'

Read and document how to build docker for multi-platforms with qemu emulator
ERROR: failed to solve: process "/dev/.buildkit_qemu_emulator
https://github.com/docker/buildx/issues/464
https://www.docker.com/blog/multi-platform-docker-builds/
github action does it