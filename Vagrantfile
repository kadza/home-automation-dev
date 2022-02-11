Vagrant.configure("2") do |config|
    config.vagrant.plugins = ["vagrant-env", "vagrant-docker-compose"]
    config.vm.box = "ubuntu/bionic64"
    config.env.enable
    config.ssh.forward_agent = true

    config.vm.network "forwarded_port", guest: 22, host: 2022
    config.vm.network "forwarded_port", guest: 1880, host: 1881, host_ip: "127.0.0.1", id: "node-red-admin"
    config.vm.network "forwarded_port", guest: 4873, host: 4873, host_ip: "127.0.0.1", id: "npm-registry"
    config.vm.network "forwarded_port", guest: 4874, host: 4874, host_ip: "127.0.0.1", id: "node-red-catalogue"

    config.vm.provision "shell", inline: "apt-get update && apt-get install -q -y tmux byobu npm"

    config.vm.provision :docker
    config.vm.provision "shell", inline: "docker login --username kadzaa --password #{ENV['DOCKER_ACCESS_TOKEN']}"

    config.vm.provision :docker_compose,
        yml: "/vagrant/docker-compose.yaml",
        run: "always",
        compose_version: "1.29.2",
        project_name: "home"

    # It doesn't work, don't now why, I run byobu-enable after first vagrant ssh
    config.vm.provision "shell", inline: "byobu-enable"
  end