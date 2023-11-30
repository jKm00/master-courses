---
Author: Joakim
---

# Chapter 1 - Introduction to Programming Concepts

## Correctness

How to tell if a program is correct? Three steps:

1. Need a mathematical model of the operations of the programming language, defining what they should do. (The language's semantics)
2. Need to define what we would like the program to do. Usually, a mathematical definition of the inputs and the output of the program. (The program's specification)
3. Use a mathematical technique to reason about the program, using the semantics.

### Mathematical induction

One way of proving a program is with a mathematical technique.

Two steps:

1. Show that the program is correct for the simplest case
2. Then show that given the program is correct for a given case, it is also correct for the next case.

## Lazy evaluation

Can write lazy functions, meaning they will only calculate the value when it's needed.

### Example:

```oz
fun lazy {Ints N}
    N|{Ints N+1}
end
```

Functions will create the infinite list `[0, 1, 2, ...]`. Looks like an infinite loop, but printing it out results in:

```
L<Future>
```

Printing a specific index will cause the function to calculate the values up to the index you are printing.

## Higher-order programming

The ability to pass functions as arguments is known as higher-order programming.

## Concurrency

A program that has several independent activities, each executed at its own pace. Concurrency is achieved with the implementation of threads.

## Dataflow

What happens if an operation tries to use a variable that is not yet bound? With dataflow, the operation will wait. Maybe another thread will bind the variable so the operation can continue.

## Explicit state

The ability of a function to store some internal values which helps it do its job. For example, make a function keep track of how many times it has been called.

## Objects

A function with internal memory is usually called an object. With objects, we can encapsulate data so no external can modify it without using functions provided by the object.

## Classes

Classes can be viewed as a factory for objects. You define what the object should look like and can instantiate objects from the definition (from the class).

## Nondeterminism and time

Applying state and concurrency to a program is tricky as the order in which threads access the state can change from execution to execution, giving the same program a different result. This is called _non-determinism_.

Nondeterminism by itself is not a problem. The difficulties occur if it shows up in a program if it is observable (called a race condition).

### Example:

```oz
declare
C = {NewCell 0}
thread
    C := 1
end
thread
    C := 2
end
```

What is the content of C after the execution of this program?

### Interleaving

Threads execution is interleaving, meaning they take turns to execute a little at a time.

**Note:** If possible, do not use state and concurrency together.

## Atomicity

An operation is _atomic_ if no intermediate states can be observed. To make sure an operation is atomic, we can use a lock. A lock has an "inside" and an "outside" and only one thread can operate on the "inside" at a time. If a second thread tries to get in, it has to wait for the first thread to finish and leave.

### Example:

```oz
declare
C = {NewCell 0}
L = {NewLock}
thread
    lock L then I in
        I = @C
        C := I + 1
    end
end
thread
    lock L then J in
        J = @C
        C := J + 1
    end
end
```
