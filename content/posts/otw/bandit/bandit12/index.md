+++
title = "Bandit11 -> Bandit12"
date = 2025-10-20T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 15
+++

## Level description
The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

## Tips for beginners
- Research about substitution ciphers.
- Learn what ROT13 is.
- Try to solve the problem in different ways.

## Solution
Now we are entering in the fascinating world of cryptography! 

Cryptography is the science of protecting information by transforming it so that only the intended person can read it. One simple example is ROT13, a basic cipher that shifts each letter 13 places in the alphabet — for example, A becomes N, and N becomes A. Because the alphabet has 26 letters, applying ROT13 twice brings the text back to its original form. It’s not secure for real use, but it’s a fun way to hide text quickly.

The goal of this exercise is to decode a text encrypted with ROT13, meaning you need to shift each letter back 13 positions to reveal the original message.
There are several ways to achieve this, but using bash a simple and quick way is to use `tr` command.

First lets check the content of the message:

```plain
Gur cnffjbeq vf 7k16JArUVv5LxVuJfsSVdbbtaHGlw9D4
```

It is clear that probably password is the last word. Using `tr` we can specify how characters can be replaces. In this case, **a** goes to **n**, **b** goes to **m** and so on following alphabet. The idea can be sum up as follows:

```bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
```
To apply the command to encrypted text, simplest way is to use the pipe `|`:
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

So that reveals the password for [bandit13]({{< relref "bandit13/index.md" >}}).