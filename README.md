# devstation

Instructions to setup your development station for nats

## Configure WSL2

Install wsl2 as well as an Ubuntu image to work in

## Configure your terminal

Make sure a nerdfont has been installed. You will need this to see the icons on the CLI.
A good example is the [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)

## Clone this repository inside the ubuntu image

The Windows terminal can be used to connect to your WSL Ubuntu instance. Once in there, you can execute the following commands

```shell
mkdir ~/workspace
cd ~/workspace
git clone https://github.com/calmera/devstation.git
```

## Install the fish shell

```shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
sudo chsh -s /usr/local/bin/fish
```

Copy the dotfiles from this repo into your .config directory:

```shell
cp -r ~/workspace/devstation/dotfiles/* ~/.config/
```

## Starship.rs

Install starship using the following command:

```shell
curl -sS https://starship.rs/install.sh | sh
```

## Install NATS CLI

```shell
curl -sf https://binaries.nats.dev/nats-io/natscli/nats@latest | sh
sudo cp nats /usr/local/bin
```

You may also want to configure the nats cli to connect to the demo nats server. Therefor, create a new context pointing to the demo server:

```shell
nats context save --server nats://demo.nats.io:4222 demo
```

Next select this context:

```shell
nats context select demo
```
