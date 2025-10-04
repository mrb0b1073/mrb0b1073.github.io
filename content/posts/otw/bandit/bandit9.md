+++
title = "Bandit8 -> Bandit9"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 12
+++

## Level description
The password for the next level is stored in the file **data.txt** and is the only line of text that occurs only once.

## Tips for beginners
- First, apply `sort` to file content.

## Solution
This level is a bit tricky. First, examine the file contents. Using `head` shows the 10 first lines of a file:


![bandit9_0](/images/otw/bandit/bandit9/0.png)
> **NB:** If you want to show more lines: `head -20` or the number of your choice.

There are tons of different passwords. The correct one is the only line of text that occurs only once. Try to research how to do on your own. You maybe find `uniq`.
This command has a very interesting flag, `-u`, used to show only the uniq lines. Let's try with that:

![bandit9_1](/images/otw/bandit/bandit9/1.png)

For some reason, is not working. The trick here is to sort the file contents before applying `uniq`. This can be achieved using `sort`, so the final command looks like this:

```bash
cat data.txt | sort | uniq -u
```
> **NB:** You need to sort lines first because `uniq` only detects consecutive repetitions. First time I solved this it took a while 😅.

After getting the password, we can continue with [bandit10]({{< relref "bandit10.md" >}}).

