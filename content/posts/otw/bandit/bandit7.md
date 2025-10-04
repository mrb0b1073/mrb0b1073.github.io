+++
title = "Bandit6 -> Bandit7"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 10
+++

## Level description
The password for the next level is stored somewhere on the server and has all of the following properties:
 - owned by user bandit7
 - owned by group bandit6
 - 33 bytes in size

## Tips for beginners
- First learn different ways to find files at Linux.
- Understand basic file properties, such as name, size or owner.

## Solution
This is very straightforward to do after completing previous level. Now we need to identify a file owned by user bandit7 and group bandi6. Furthermore, the file is **somewhere on the server**, which means we have to find in the root directory `/`. 
```bash
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
```

> **NB:** I added that strange `2>/dev/null` to filter error output. The reason why it works like that is more technical, for now just save this a fast way to filter errors in terminal. We get some errors because looking for files in the whole server may return some unaccesible files, as we don't have root user permissions. We will study Linux permissions in later levels.

We should get a single file, containing password for [bandit8]({{< relref "bandit8.md" >}}).

