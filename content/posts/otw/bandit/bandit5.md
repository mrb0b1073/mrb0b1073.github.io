+++
title = "Bandit4 -> Bandit5"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 8
+++

## Level description
The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.

## Tips for beginners
- What means human-readable file?
- Is there any way to check filetype at Linux?.

## Solution
Checking inhere's contents shows some files names **--file00, --file01, ..., --file09**. First things first, what is exactly a human-readable file? As you may be thinking, is a file whose content can be read by humans, i.e, ASCII text files. Check more about ASCII [here](https://en.wikipedia.org/wiki/ASCII)

So now, our goal is checking if file content of every file in the folder is ASCII or not. `file <filename>` does the job.
![bandit4](/images/otw/bandit/bandit5/0.png)

Note the use of `*`. That called a wildcard regular expression, we'll deep into it in later levels. An easy approach could be checking every file separately:
```bash
file ./--file00
file ./--file01
...
file ./--file09
```

But that's not funny, imagine we have 100 files to check. All the files are in the same directory, so we can use `cat ./*` where `./*` matches every filename in the directory, applying `file` to every file.

> **NB:** Another approach is to use `find` with certaing flags. Try to do in different ways, don't stick to my solution.

The file **--file00** content is not readable, so get password from **--file07** and continue with [bandit6]({{< relref "bandit6.md" >}}).




