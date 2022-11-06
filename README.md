1. Install multipass and vscode
2. Create vm with multipass
```
multipass launch --cloud-init - --disk 40G --mem 4G --cpus 4 --name home <<EOF
groups:
- docker
snap:
  commands:
  - [install, docker]
runcmd:
- adduser ubuntu docker
EOF
```
3. Login to the vm
```
multipass shell home
```
4. Generate ssh-key https://phoenixnap.com/kb/generate-setup-ssh-key-ubuntu
5. Add ssh-key to Github
6. Clone repo via ssh git@github.com:kadza/home-automation-dev.git
7. Configure .env based on .env_template
8. Run docker containers
```
docker-compose up -d
```
9. Copy ssh keys to node-red-admin. It's necessary to pull node-flow repository
To be verified https://nickjanetakis.com/blog/docker-tip-56-volume-mounting-ssh-keys-into-a-docker-container
```
docker cp ../ssh-tmp/id_rsa.pub node-red-admin:/usr/src/node-red/.ssh
```
10. Install vscode remote plugin
11. Connect to repom on vm
12. Forward 1880 port to localhost
13. In a browser localhost:1880


git config --global user.email "lukasz.kujawiak@gmail.com"