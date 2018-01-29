# ~VAGRANT~

## Installing Vagrant

### This is a quick getting started tutorial for Vagrant to help you get your foot in the door.

The getting started guide will use Vagrant with VirtualBox, since it is free, available on every major platform, and built-in to Vagrant. After reading the guide though, do not forget that Vagrant can work with many other providers.

Before diving into your first project, please install the latest version of [Vagrant](https://www.vagrantup.com/docs/installation/). And because we will be using [VirtualBox](https://www.virtualbox.org/) as our provider for the getting started guide, please install that as well.

## Up and running

### To start running this app clone this repository from this hiperlink to [GitHub](https://github.com/DragosTirlungeanu/Vagrant-intro)

### $ vagrant init ubuntu/xenial64 *(you can skip this step if you have vagrant already installed)*
This top command creates or initiates an environnment called **"GUEST"** on your **v**irtual **m**achine accessible through the following command:
### $ vagrant up
After running the above two commands, you will have a fully running virtual machine in VirtualBox running Ubuntu. Now you can **update the sources** by typing the following command into your **HOST MACHINE**  **_(personal computer).

### $ sudo apt-get update -y
This proccess is also automated due to the fact that **_sudo_** gives full accsess to install updates while with **_-y_** you as a user are telling the ccomputer to run through all installation proccess without asking for permission to install as you have already accepted it.

### $ sudo apt-get install nginx -y

With this function you will be able to **install** a programme called **"engine x"** and this will again be done through an automated step.

### curl localhost:80

Run this above code in your terminal before opening your **_subl ._** or **_atom ._**
Now in your **text editor** delete all comments apart from the top two and pass in this bit of information: **config.vm.network "private_network", ip:"192.168.10.100"** then run **vagrant reload** from your terminal.

### cat /etc/hosts
This will check all your available hosts in your machine from the terminal.

### vagrant plugin install vagrant-hostsupdater
Run from terminal and it will install/update your host list and you will be ready to modify this in your **text editor**

### in subl . or atom . run config.hostsupdater.aliases = ["eg.dev.local"]

Now head to your web browser and enter *http://eg.dev.local* to see your local host page

## Congrats you are now ready to use Vagrant!