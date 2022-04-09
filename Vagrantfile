Vagrant.configure("2") do |config|
    config.vm.hostname = "ubuntu"
    config.vagrant.plugins = ["vagrant-env", "vagrant-docker-compose"]

    config.env.enable
    config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
    config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"

    config.vm.provider :docker do |docker, override|
        override.vm.box = nil
        docker.image = "rofrano/vagrant-provider:ubuntu-21.04"
        docker.remains_running = true
        docker.has_ssh = true
        docker.privileged = true
        docker.volumes = ["/sys/fs/cgroup:/sys/fs/cgroup:rw"]
        docker.create_args = ["--cgroupns=host"]
    end

    config.vm.network "forwarded_port", guest: 22, host: 2022
    config.vm.network "forwarded_port", guest: 1880, host: 1881, host_ip: "127.0.0.1", id: "node-red-admin"
    config.vm.network "forwarded_port", guest: 4874, host: 4874, host_ip: "127.0.0.1", id: "node-red-catalogue"

    config.vm.provision "shell", inline: "apt-get update && apt-get install -q -y tmux byobu npm"
    config.vm.provision "shell", inline: "runuser -l vagrant /vagrant/provision-nvm.sh"

    config.vm.provision :docker
    config.vm.provision "shell", inline: "docker login --username kadzaa --password #{ENV['DOCKER_ACCESS_TOKEN']}"

    config.vm.provision :docker_compose,
        yml: "/vagrant/docker-compose.yaml",
        run: "always",
        compose_version: "v2.2.3",
        project_name: "home"

    config.vm.provision "shell", inline: "git config --global user.email 'lukasz.kujawiak@gmail.com'"
    config.vm.provision "shell", inline: "git config --global user.name 'Lukasz Kujawiak'"

    # It doesn't work, don't now why, I run byobu-enable after first vagrant ssh
    config.vm.provision "shell", inline: "byobu-enable"
  end