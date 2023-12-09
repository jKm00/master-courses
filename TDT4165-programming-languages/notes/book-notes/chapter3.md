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

## What is a Parser?

- Part of a compiler
- Compiler translates a sequence of characters into low-level instructions that can be executed on a machine.
- Compiler has three parts:
  1. **Tokenizer:** converts sequence of characters into sequence of tokens.
  2. **Parser:** Converts a sequence of tokens into an abstract syntax tree (parse tree)
  3. **Code generator:** Traverses the syntax tree and generates low-level instructions for the machine.

## Explicit Lazy Evaluation

- Data struture (such as a list) is constructed incrementally as it is demand.

### Implementaion in Higher-order Programming

Consumer has a function to get a new list element. The function returns a pair; the new list element and a new function that the consumer can use to get another element.

## Currying

- Write functions of `n` arguments as `n` nested functions.

Example:

```
# Original
fun {Max X Y}
  if X >= Y then X else Y end
end

# Currying
fun {Max X}
  fun {$ Y}
    if X >= Y then X else Y end
  end
end
```

**Advantage:** Can now call `{Max 10}` and the result is never less than 10.

## Nondeclarative needs

Declarative programming is smoewhat detached from the real world, where entities have memories (state) and ca nevolve independently and proactivly (concurrency). Some nondeclarative operations are needed to connect declarative programs to the real world.

### Text input/output with a file

One way to interface declarative programming with the real world is by using files. The basic pattern of access is:

- Input file `read` -> compute function -> `write` output file.

### Text input/ouput with a graphical user interface

Most direct way to interface programs with human users is through a graphical user interface.

### Stateless data I/O with files

Store any value to a file and load it back later, not just strings.

## Program design in the small

"Programming in the small" means a program developed by one person in a short time. "Programming in the large" means a program developed by multiple people or by one person over a large time, as the person will forget some details about their code.

[//]: # 'p. 223'

## Streams

### Eager Streams

- Streams that produces elements as fast as it wants.
- Drawback: if it produces elements faster than the consumer can consume them, it leads to explosion in resource usage.

### Lazy Streams

- Streams that produces elements on demand from the consumer.
- Drawback: reduces throughtput as the consumer has to request a new element, then wait for the consumer to provide it

### Bounded Buffer

- Best of both worlds: Put a transducer in between the producer and the consumer that acts as a buffer. The buffer can store a maximum of `n` elements. When the consumer needs a new element, it reeds it from the buffer. Whenever the buffer is below `n` elements, the producer is allowed to produce more elemet.s

#### Transducer

- A stream object in between the producer and consumer that reads the producers streams and creates another stream for the consumer.
- Eg. buffer, filter, etc...

## Lazy Execution

- Statements are executed when they are needed (not sequentially like they normally are)

### Example

```
fun lazy {F1 X} X+X end
fun lazy {F2 X} X*X end
fun lazy {F3 X} (X+1)*(X+1) end
A = {F1 10}
B = {F2 20}
C = {F3 30}
D = A + B
```

`A` and `B` are calculated when we need `D`, `C` is never calcualated as we never need it.
