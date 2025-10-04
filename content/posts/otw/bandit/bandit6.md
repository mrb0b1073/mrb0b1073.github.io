+++
title = "Bandit5 -> Bandit6"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 9
+++

## Level description
The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:
- human-readable
- 1033 bytes in size
- not executable

## Tips for beginners
- First learn different ways to find files at Linux.
- Understand basic file properties, such as name, size or owner.

## Solution
The purpose of the level is to show us how to find for files. Listing contents of **inhere**, we can see some folders, containing a lot of files inside:
![bandit6_0](/images/otw/bandit/bandit6/0.png)

> **NB:** Adding `-R` to `ls` shows recursively the content of every folder inside the directory listed.

So this time, checking every file is not an option. We need to find a file with some properties, specific size, not excutable and human-readable. Let's explain the command we're using:
```bash
find inhere/ -size 1033c ! -executable
```
First, we specify the directory, in this case **inhere**. The option `-size 1033c` returns files of 1033 bytes. Then, with `-executable` we would get executable files, but we want **not** executable files, that's why we are adding `!` before.

> **NB:** By default, the `-size` option takes as argument the number of blocks. For example, `-size 2` means 2 blocks of 512 bytes, so it's 1024. The `c` is used to specify exact bytes. Don't ask me why it's `c` and not `b` 😅.

The property of human-readability is not implemented in find. This is not an issue, the previous command returns a single file and it is human readable (we could confirm using `file`):
![bandit6_1](/images/otw/bandit/bandit6/1.png)

Get your password and continue with [bandit7]({{< relref "bandit7.md" >}}).

