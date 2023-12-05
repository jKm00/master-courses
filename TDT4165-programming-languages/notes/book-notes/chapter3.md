---
Author: Joakim
---

# Declarative Programming Techniques

An operation is declarative if, when called with the same arguments, it returns the same results independent of any other computation state.

Not al programs can be easily written in the declarative model.

## Higher-order programming

Functions can take functions as arguments and return them.

## Recursion

- Function is recursive if it calles itself at least once
- A daa type is recursive if it is defined in terms of itself (a list)

Growing stack size is not always avoidable.

Naive definitions are often slow. Two techniques to transform to linear-time iterative computations: **State transformation** and **difference lists**.

## Accumulators

State threading is each procedure's output is the next procedure's input. This technique is called accumulator programming.

## Ephemeral

When there can be only one version of an object/structure in use at any time. For example, is a queue is used by the program as input to anoperation, then it can no longer be used as input to another operation as the result of the first will change it, making the result of other operations out of sync.

## Persistent

What if we need to use multiple versions of a queue and still require constant-time exection? Such a queue is called persistent.

# What is a Parser?

- Part of a compiler
- Compiler translates a sequence of characters into low-level instructions that can be executed on a machine.
- Compiler has three parts:
  1. **Tokenizer:** converts sequence of characters into sequence of tokens.
  2. **Parser:** Converts a sequence of tokens into an abstract syntax tree (parse tree)
  3. **Code generator:** Traverses the syntax tree and generates low-level instructions for the machine.

[//]: # 'p. 223'
