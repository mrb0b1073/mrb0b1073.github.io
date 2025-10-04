+++
title = "Bandit9 -> Bandit10"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 13
+++

## Level description
The password for the next level is stored in the file **data.txt** in one of the few human-readable strings, preceded by several '=' characters.

## Tips for beginners
- `strings` can be used to retrieve human readable-content from a file.
- You can apply things from previous levels.

## Solution
The file **data.txt** has mixed content, binary and ASCII. If the password is preceded by several '=' characters, we can simply filter by some of them. But there is a little problem, content is not fully ASCII, so `grep` won't work. First you need to get content with `strings` to get only the human readable content.

![bandit10](/images/otw/bandit/bandit10/0.png)
> **NB:** Try to run both `cat` and `strings` separately. Observe the differences.

Next level is bandit11 (in progress).

