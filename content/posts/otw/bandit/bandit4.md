+++
title = "Bandit3 -> Bandit4"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 7
+++

## Level description
The password for the next level is stored in a hidden file in the inhere directory.

## Tips for beginners
- Learn how to navigate directories in Linux.
- First understand what a hidden file is.

## Solution
Listing directory files inside bandit4's home directory, show directory **inhere**.
> **NB:** How to distinguish files and directories in Linux? Use `ls -l` and see the difference.

We have 2 options now:
1. Move to inhere directory and check contens again.
2. Check contents directly.

Moving to another directory can be done using `cd <dirName>`. If you prefer to check directory contents directly, use `ls <dirName>`.

After checking inhere contents via `ls`, we see nothing. The reason is the file is a *hidden file*. A hidden file in Linux is everyfile whose name starts with dot `.`. Hidden files are not shown by default with `ls` command, so we must add a special flag `-a` to list **all** files:
![bandit4](/images/otw/bandit/bandit4/0.png)

> **NB:** Both flags `-l` and `-a` cna be combined into a single flag `-al`, which is shorter to type.

As you can see, filename is **...Hidding-From-You** starting with three dots. Reading file contents should be easy at this point!

Next level is [bandit5]({{< relref "bandit5.md" >}}).


