---
Author: Joakim
---

# Assignment 2

## Task 3

### a)

**Question:** Formally describe the grammar of the lexems in Task 1.

**Answer:**

$
V = \{c\}
$

$
S = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 0, +, -, *, /\}
$

$
R = \{(c, \epsilon), (c, 1c), (c, 2c), (c, 3c), (c, 4c), (c, 5c), (c, 6c), (c, 7c), (c, 8c), (c, 9c), (c, 0c), (c, +c), (c, -c), (c, *c), (c, /c)\} \\
$

$
v_s = c
$

Where S matches any non-white-space character

### b)

**Question:** Describe the grammar of the records return by the 'ExpressionTree' function in Task 2, using (E)BNF

**Answer:**

$
<c> ::== plus(<c>)
$

```

```

plus(7 minus(multiply(9 10) 3))

### c) 

**Questiong:** Which kind of grammar is the grammar you defined in stap a)? Is it regular, context-free, context-sensitive, or unconstrained? What about the one from step b)?

**Answer:**

In task a) regular grammar is used. This is becuase the production rule follows the form of A -> a, where 'a' is only terminal symbols.

In task b) 

