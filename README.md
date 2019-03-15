# Termux-setup

This project contains scripts to configure [Termux](https://termux.com/) for dev(ops) purposes.
It allows me and you to setup Termux in a repeatable way.

[Termux](https://termux.com/) is an Android terminal emulator and Linux environment app that works directly with no rooting or setup required.

## Installing Ansible

[Ansible](https://www.ansible.com/) is an open-source software provisioning, configuration management, and application deployment tool. 
It runs on many Unix-like systems, and can configure both Unix-like systems as well as Microsoft Windows. It includes its own [YAML](https://yaml.org/) based declarative language to describe system configuration. 

I created a script that installs Ansible and all it's necessary dependencies on Termux.
If you just install python and then try to install ansible with the Python package manager `pip`, you will run into several dependency errors. It will allow you to use Ansible with remote hosts. I have not tested it on `localhost` aka Termux itself yet!

The script does the following:

1. Update dependencies that are needed to compile some of the dependencies of Ansible using `pkg`.
2. Update `pip`
3. Update other Python packages using `pip`
4. Install `pynacl` with `pip`
5. install `ansible` with `pip`

You can run this script as follows.

```bash
> pkg install wget
> wget https://raw.githubusercontent.com/nicenemo/termux-setup/master/termux-install-ansible.sh
> sh termux-install-ansible.sh
```

## Installing dev system

> To be determined. I am not certain yet whether I want to do this with Ansible or just a bunch of `pkg install ...` or `apt install ...` commands. By default `apt` is not available. After running the script for ansible, `apt` is available. So I should be able to use Ansible.
