+++
title = "Bandit1 -> Bandit2"
date = 2025-10-02T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 5
+++

## Level description
The password for the next level is stored in a file called - located in the home directory

## Tips for beginners
- Try to understand why the previous solution is not working as you expect.

## Solution
You may be asking yourself why OverTheWire people are asking the same as the previous level. Let's try with our `cat` command: 
![bandit2](/images/otw/bandit/bandit2/0.png)

The terminal is *waiting* for something else. This happens due to character `-` being used to pass arguments to our commands, and the linux shell interpreting that.
To prevent that, we could use:

```bash
cat ./-
```
> **NB:** Dot . is used to refer to the current directory. The slash / is used at the end of directory name.


We get the password for [bandit3]({{< relref "bandit3.md" >}}) level.




