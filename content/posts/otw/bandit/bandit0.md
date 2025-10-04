+++
title = "Bandit0"
date = 2025-10-02T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 4
+++

## Level description
The goal of this level is for you to log into the game using SSH. The host to which you need to connect is **bandit.labs.overthewire.org**, on port 2220. The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.

## Tips for beginners
- Read a bit about what SSH is.
- Research about what a port is.

## Solution
This is just the tutorial. Here we learn to connect to a server using SSH. For more information about what SSH is, please go [here](https://en.wikipedia.org/wiki/Secure_Shell).

At Linux, we can use ssh client to connect to the server. It should be installed by default on your system. If not, please first research about how to install. Once you have the SSH client installed, you can log in into the first level as follows:
```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

Syntax is simple: `ssh <username>@<hostname> -p <port>`. Usually SSH runs on port 22 by default, but they changed to port 2220 so we must specify it in the command.

Once you try to log in, you will see something like this:
![bandit0](/images/otw/bandit/bandit0/0.png)

> **NB:** If it's the first time you try to log in, you will be asked about the authenticity of the host. Just type *yes*.

Type the password **bandit0** and press enter. Now you are inside bandit server, ready to begin with [bandit1]({{< relref "bandit1.md" >}})!


