+++
title = "Bandit0 -> Bandit 1"
date = 2025-10-02T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 4
+++

## Level description
The password for the next level is stored in a file called **readme** located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.

## Tips for beginners
- Learn about home directory in Linux. 
- Learn to use `cat` and `ls` commands.

## Solution
First step is to learn basic Linux commands. How we can read files? How can we list files inside a directory? To achieve this goal, lets just type:
```bash
ls
```
This shows in terminal the files at the current directory. There you will see the **readme** file.

Now we can to check the contents, so let's use cat:
```bash
cat readme
```
To read a file, we use `cat <filename>`.
> **NB:** Not every file is human readable in Linux. We deep more about this in later levels.

The content of the readme file reveals the password for [bandit2]({{< relref "bandit2.md" >}}) level.


