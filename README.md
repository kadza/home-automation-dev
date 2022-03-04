1. vagrant up
2. localhost:1881/
3. Clone repository https://github.com/kadza/node-red-flows-home
4. Install dependencies
- node-red-contrib-komfovent must be available in catalogue


`docker-compose -p home up -d`
https://www.shogan.co.uk/how-tos/quick-and-easy-local-npm-registry-with-verdaccio-and-docker/
apt install npm
/vagrant/dev/node-red-contrib-komfovent$ npm publish --registry http://localhost:4873
npm view --registry http://localhost:4873
npm adduser --registry http://localhost:4873/
/vagrant/node-red-contrib-komfovent$ npm publish --registry http://localhost:4873/

vagrant@ubuntu-bionic:/vagrant/dev/node-red-contrib-komfovent$ cd ../node-red-private-catalogue-builder/
vagrant@ubuntu-bionic:/vagrant/dev/node-red-private-catalogue-builder$ DOCKER_BUILDKIT=1 docker build . -t kadzaa/node-red-catalogue:latest

SSH agent configuration !!!

https://www.ssh.com/academy/ssh/add
https://stackoverflow.com/questions/24681167/use-ssh-private-key-from-host-in-vagrant-guest


curl http://localhost:4873/-/v1/search
npm publish --registry http://localhost:4873

ssh-add
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent