---
Author: Joakim
---

# Declarative Programming Techniques

An operation is declarative if, when called with the same arguments, it returns the same results independent of any other computation state.

Not all programs can be easily written in the declarative model.

## Higher-order programming

Functions can take functions as arguments and return them.

## Recursion

- A function is recursive if it calls itself at least once
- A data type is recursive if it is defined in terms of itself (a list)

Growing stack size is not always avoidable.

Naive definitions are often slow. Two techniques to transform to linear-time iterative computations: **State transformation** and **difference lists**.

## Accumulators

State threading is each procedure's output is the next procedure's input. This technique is called accumulator programming.

## Ephemeral

When there can be only one version of an object/structure in use at any time. For example, if a queue is used by the program as input to an operation, then it can no longer be used as input to another operation as the result of the first will change it, making the result of other operations out of sync.

## Persistent

What if we need to use multiple versions of a queue and still require constant-time execution? Such a queue is called persistent.

## What is a Parser?

- Part of a compiler
- A compiler translates a sequence of characters into low-level instructions that can be executed on a machine.
- The compiler has three parts:
  1. **Tokenizer:** converts a sequence of characters into a sequence of tokens.
  2. **Parser:** Converts a sequence of tokens into an abstract syntax tree (parse tree)
  3. **Code generator:** Traverses the syntax tree and generates low-level instructions for the machine.

## Explicit Lazy Evaluation

- Data structure (such as a list) is constructed incrementally as it is demanded.

### Implementation in Higher-order Programming

The consumer has a function to get a new list element. The function returns a pair; the new list element and a new function that the consumer can use to get another element.

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

Declarative programming is somewhat detached from the real world, where entities have memories (state) and can evolve independently and proactively (concurrency). Some nondeclarative operations are needed to connect declarative programs to the real world.

### Text input/output with a file

One way to interface declarative programming with the real world is by using files. The basic pattern of access is:

- Input file `read` -> compute function -> `write` output file.

### Text input/output with a graphical user interface

The most direct way to interface programs with human users is through a graphical user interface.

### Stateless data I/O with files

Store any value to a file and load it back later, not just strings.

## Program design in the small

"Programming in the small" means a program developed by one person in a short time. "Programming in the large" means a program developed by multiple people or by one person over a large time, as the person will forget some details about their code.
