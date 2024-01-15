---
author: Joakim
place: EL5
date: 12.01.24
---

# Number Theory

SNORK

## Basic Properties of Factors

1. If `a` divides `b` and `a` divides `c`, then `a` divides `b + c`.
2. If `p` is a prime and `p` divides `ab`, then `p` divides `a` or `b`.

### Euclidean division

For `a` and `b` in `Z`, `a > b`, there exist unique `q` and `r` in `Z` such that:

$$ a = bq + r $$

where $0 \leq r < b$

## Greatest Common Divisor

1. `d` divides `a` and `b`
2. if `c` divides `a` and `b` then `c` divides `d`
3. `d > 0`

## Groups

1. **Closure:** $a * b \in G$ for all $a, b \in G$
2. **Identity:** there exists an element, `1`, so that $a * 1 = 1 * a = a$ for all $a \in G$
3. **Inverse:** for all $a \in G$ there exists an element, `b`, so that $a * b = 1$ for all $a \in G$
4. **Associative:** for all $a, b, c \in G$ that $(a * b) * c = a * (b * c)$
5. **Commutative:** for all $a, b \in G$ that $a * b = b * a$

### Cyclic groups

- The order of a group `G` (`|G|`), is the number of elements in `G`

$$|Z_{3}| = 3$$
$$|2| = 3, because (2 + 2 + 2) \% 3 = 0$$

- A generator `|g|` is a number in the set such that `|g| = |G|`
