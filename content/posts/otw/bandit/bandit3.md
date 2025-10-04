+++
title = "Bandit2 -> Bandit3"
date = 2025-10-04T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 6
+++

## Level description
The password for the next level is stored in a file called --spaces in this filename-- located in the home directory

## Tips for beginners
- Think about how to *escape* the whitespaces.

## Solution
After login in the machine as bandit3, we can see the filename *--spaces in this filename--*.

Now we have 2 problems:
1. Same as previous level, filename starts with `--`, so it will be interpreted as an argument. Address this problem using `./`.
2. Filename contains **whitespaces**. This is an issue, as bash interpretes whitespaces to separate commands.

To solve the second problem, we must escape the whitespace character in some way. Here is the solution:

```bash
cat ./--spaces\ in\ this\ filename--
```

> **NB:** Little trick, you can start writting filename and press *Tab* to autocomplete the name. The `\` is going to be inserted automatically.

Just using the `\` we can escape the whitespace. 

Now we can continue with the [bandit4]({{< relref "bandit4.md" >}}) level.


