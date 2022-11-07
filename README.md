1. Setup vm with ssh access and conect with it via VSCode Remote Access. I do it like this: https://github.com/kadza/vm-template
2. Setup Docker. I do it like this this https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository and https://docs.docker.com/engine/install/linux-postinstall/
3. Add ssh-key to Github
4. Clone repo via ssh `git clone git@github.com:kadza/home-automation-dev.git`
5. Configure .env based on .env_template
6. Run `./admin-init.sh`
7. Forward 1880 port to localhost
8. In a browser http://localhost:1880
9. Configure github repository and credentials password
10. Download dependencies

