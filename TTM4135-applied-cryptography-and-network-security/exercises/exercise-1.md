---
author: Joakim
date: 18.01.24
---

# Exercise 1

## Question 1

- **Confidentiality:**

## Question 2

I can minimize the impact of these on my systems by implementing proper security services.

## Question 3

a) **Integrity:** If the files of a patient don't match his diagnosis, he can get the wrong treatments.  
b) **Confidentiality:** Only authorized persons should be able to view their data  
c) **Availability:** Users should be able to visit the website whenever they need to.

## Question 4

a) $gcd(23, 29) = 1$  
b) $gcd(893, 703) = 19$  
c) $gcd(1045, 77) = 11$

## Question 5

a) $35 mod 31 => 35 = 31 * 1 + 4$  
b) $3 mod 1000 => 3 = 1000 * 0 + 3$  
c) $65 mod 21 => 61 = 21 * 2 + 19$
d) $236 mod 5 => 236 = 5 * 47 + 1$  
e) $123 mod 3 => 123 = 3 * 41 + 0$

## Question 6

An inverse of a number `a module m` exists if and only if `a` and `m` are coprime. In other words if `gcd(a, m) = 1`.

a) true
b) false
c) false
d) true

## Question 7

$Z_{5} contains the elements {0, 1, 2, 3, 4}$

### Addition table

| +   | 0   | 1   | 2   | 3   | 4   |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 1   | 2   | 3   | 4   |
| 1   | 1   | 2   | 3   | 4   | 0   |
| 2   | 2   | 3   | 4   | 0   | 1   |
| 3   | 3   | 4   | 0   | 1   | 2   |
| 4   | 4   | 0   | 1   | 2   | 3   |

### Multiplication table

| \*  | 0   | 1   | 2   | 3   | 4   |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 1   | 2   | 3   | 4   |
| 2   | 0   | 2   | 4   | 1   | 3   |
| 3   | 0   | 3   | 1   | 4   | 2   |
| 4   | 0   | 4   | 3   | 2   | 1   |

### Checks

- [x] **Closure:** Both tables stay within the set
- [x] **Additive identity:** 0 acts as the additive identity (0 + an element = that element)
- [x] **Multiplicative identity:** 1 acts as the multiplicative identity (1 x an element = that element)
- [x] **Additive inverse:** Each element has an additive inverse (e.g. 2 + 3 = 0)
- [x] **Multiplicative inverse:** Each non-zero element has a multiplicative inverse (e,g, 2 x 3 = 1)

## Question 8

### A)

- There are 10 elements in $Z_{11}^{*}$, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}.
- 2 is a generator since you can get any number in the set by doing $2^{n} mod 11$.

### B)

$Z_{12}^{*}$ consists of all integers less than 12 that are coprime to 12. 12 has the prime factorization $2^{2} * 3$. Therefore, any number that is not a multiple of 2 or 3 and is less than 12 will be in $Z_{12}^{*}$:

- There are 4 elements in $Z_{12}^{*}$, {1, 5, 7, 11}
- Does not have a generator!

## Question 9

Idk

## Question 10

### XOR truth table

| x1  | x2  | x1⊕x2 |
| --- | --- | ----- |
| 0   | 0   | 0     |
| 0   | 1   | 1     |
| 1   | 0   | 1     |
| 1   | 1   | 0     |

### OR truth table

| x1  | x2  | x1Vx2 |
| --- | --- | ----- |
| 0   | 0   | 0     |
| 0   | 1   | 1     |
| 1   | 0   | 1     |
| 1   | 1   | 1     |

### Truth table for z

| x1  | x2  | x1^x2 | x1⊕x2 | x1⊕x2⊕(x1^x2) |
| --- | --- | ----- | ----- | ------------- |
| 0   | 0   | 0     | 0     | 0             |
| 0   | 1   | 0     | 1     | 1             |
| 1   | 0   | 0     | 1     | 1             |
| 1   | 1   | 1     | 0     | 1             |
