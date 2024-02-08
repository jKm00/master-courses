---
author: Joakim
date: 08.02.24
chapter: 2, 5
---

# Number Theory for Public Key Crypto

$b|a$ => $b$ divides $a$ ($a / b$ does not have a rest)

## Division alorithm

$$ a = qn + r$$

$$
0 \le r < n; q = \lfloor a/n \rfloor
$$

## Modular Arithmetic

$a mod n$ is the remainder when $a$ s divieded by $n$

## Fermat's and Euler's Theorems

### Fetmat's Theorem

If $p$ is a prime and $a$ is a postive integer not divisible by $p$, then

$$a^{p - 1} = 1 (mod\ p)$$

Alternatively, if $p$ is prime and $a$ is a positive integer, then

$$a^{p} = a(mod\ p)$$

### Euler's Totien Function

$ø(n)$ is defined as the number of positive integers less thatn $n$ that also are relavite prime to $n$.

E.g:

- $ø(37) = 36$ since 37 is prime, all positive integers from 1 through 36 are relative prime to 37
- $ø(35) = 24% since 24 of positive integers below 35 is relative prime to 35

For a prime number $p$ => $ø(p) = p - 1$

### Euler's Theorem

For every $a$ and $n$ that are relative prime:

$$a^{ø(n)} = 1(mod\ n)$$
