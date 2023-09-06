---
Date: 05. Sep 2023
Place: R2
---

# Lecture 2: Syntax

## What is a programming paradigm?

- Style of programming...

### Imperative programming

- A program is a sequence of statements
- Statements update the state ofr variables etc.
- Closely related to the language of the underlying hardware

### Object-oriented Programmning

- A program defines a set of objects that are **encapsulations** of data and operations
- Models of entities in real world
- Separation of class and instance
- Separation of state and behaviour
- Objects send messages to each other
- Objects execute operations when tey receive messages

### Functional Programming

- A program defines a set of functions
- Functions, when called with appropriate arguments, compute values based on the input
- Functions are first class objects, they can be both arguments to and returne values from calls to other functions
- In pure functional programing there are no side-effects, variables are not mutable variables, there is no I/O

### Logic Programming

- A progam is a set of logical assertions; facts and rules
- A program may be read as a logical expression or as a set of operation to be executed
- An execution of a program follows an inference pattern to **prove or disprove** a query

## How many languages should you learn?

- Find out what is best suited for the situation

_Dont be a one trick pony_

## Syntax vs Semantic

- **Syntax:** Specifies which sequence of symbols are vaild
- **Semantic:** Specifies what the computer has to do during the execution of a program

### How do we specify syntax?

- **Informally:** descriptions
- **Fomrally:** formal grammars

## Formal Languages

### Definition

A Formal language L is a set of strings of symbolds from a finite alphabet A:

$$
A = {s_1, s_2, ..., s_n}
$$
$$
L = {s^{(1)}, s^{(2)}, ..., s^{(n)} | m \geq 0, s^{(i)} \in A}
$$

### How to use a grammar to generate sentences?

1. Start with the starting variable
2. Apply rules till you have a string with only terminals

_Second step can be done multiple times to compute different strings_

_Example in slides_