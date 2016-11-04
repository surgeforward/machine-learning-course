Getting Started
===============

Required Tools
--------------

This course requires certain tools, particularly Python 3 and several Python 3rd party modules like scikit-learn and numpy. These can sometimes be difficult to install on different platforms, so we have packaged up a Vagrantfile and setup script that will give you a VM you can use. In the future, we may also add a Docker solution so that we have a more lightweight way to solve this problem.

### Vagrant ###

#### About ####

Vagrant is a tool that automates the deployment of virtual machines for development. Vagrant uses a special file format called a Vagrantfile to set up a virtual machine from one of various providers (we will be using Virtualbox, but feel free to use whatever you're comfortable with) and can automate the configuration of that VM using scripts or configuration management tools. Vagrant ensures that a team running different platforms can still run their development code in identical environments without much hassle.

#### Installation ####

To use Vagrant, you will first need to download and install VirtualBox for your platform from https://www.virtualbox.org/wiki/Downloads. Once VirtualBox has been installed, visit https://www.vagrantup.com/downloads.html to download and install Vagrant on your platform.

Once Vagrant has been installed, verify that it is working by opening a command prompt or terminal window and executing `vagrant version`. The output should look something like:

    $ vagrant version
    Installed Version: 1.8.6
    Latest Version: 1.8.6
     
    You're running an up-to-date version of Vagrant!

Set Up the Environment
----------------------

1. Follow the steps above to install VirtualBox & Vagrant
2. Download or `git clone` the machine-learning repo
3. Open a CLI and change the directory to the repo
4. Run `vagrant up` - note that this may take some time to download the "base image," which is a full Debian virtual machine image

Use the Environment
-------------------

1. Open a CLI and change the directory to the repo
2. Run `vagrant ssh` to secure shell into the virtual machine
3. Run `python` to access the Python REPL

Keep in mind also that the directory `/vagrant` within the guest VM is mapped to the current directory on the host machine.

If you haven't used Linux much before, don't worry. You won't need to use much besides Python, other than commands like `cd` or `ls`, and if you're stuck, someone in the Slack channel can help out.

The install scripts install both Python 3.5.2 and the Python 3 using the Anaconda distribution (version 4.1.1). These and other Python versions are installed using pyenv ( https://github.com/yyuu/pyenv ).