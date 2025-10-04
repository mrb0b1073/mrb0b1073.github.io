+++
title = "Bandit7 -> Bandit8"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 11
+++

## Level description
The password for the next level is stored in the file **data.txt** next to the word **millionth**.

## Tips for beginners
- Learn how to filter file contents.

## Solution
At previous levels, we discovered how to find files. Now it's time to find content inside a file. `grep` command is going to help with that task.

![bandit8](/images/otw/bandit/bandit8/0.png)
> **NB:** Of course I don't want to spoil you the password! 

Notice how this can be achieved in different ways.
1. Using `grep <keyword> <filename>`.
2. Using the pipe `|` to execute `grep` over the result of `cat` command.

Take your favorite path to solve the level, and continue with [bandit9]({{< relref "bandit9.md" >}}).

