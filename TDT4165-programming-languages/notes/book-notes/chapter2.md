---
Author: Joakim
---

# Declarative Computation Model

Declarative progamming: defined as evaluating functions over partial data structures. Sometimes called stateless programming.

## Defining Practical Programming Languages

- **Syntax:** Grammar
- **Semantic:** Meaning

### Language Syntax

Define legal programs that can be successfully executed.

#### Grammars

A set of rules that defines how to make a _sentence_ out of _words_.

- **Sentences:** Statements
- **Words:** Tokens

1. Statement = sequence of tokens
2. Token = sequence of characters

- **Tokenizer / Lexical analyzer:** Takes a sequence of characters and reutnrs a sequence of tokens.
- **Parser:** Takes a sequence of tokens and returns a parse tree.

#### Extended Backus-Naur Form (EBNF)

Common notation for defining grammar.

##### _Terminal symbol_

A token

##### _Nonterminal symbol_

Sequence of tokens

```
<digit> ::== 0|1|2|3|4|5|6|7|8|9
```

```
<int> ::== <digit> { <digit> }
```

#### Context-free and Context-sensitive Grammars

##### _Context-free_

The expansion of a nonterminal is always the same no matter where it is used.

##### _Context-sensitive_

Contains nonterminal that are dependent on the context of where it is used.

E.g. in many languages a variable has to be declared before it is used. The nonterminal that used the variable must only allow using already-declared variables.

#### Ambiguity

Context-free grammar can have several parse trees that correspond to the same token sequence. To solve this, we add extra conditions.

```
2*3+4 = (2*3)+4 | 2*(3+4)
```

- **Precedence:** Each operator is given a precedence level. High precedens are put as deep in the parse tree as possible.
- **Associativity:** Determines whether the leftmost or the rightmost operatos binds tighter. `2-3-4 = (2-3)-4 | 2-(3-4)`

### Language Semantics

Defines what a program does when it executes.

#### The Kernel Language Approach

All language constructs are deinfed in terms of translations into a core language known as the kernel language.

Each computation model has its kernel language, which builds on its predecessor.

#### Linguistic Abstracion

A new construct that is an abstraction and an addition to the language syntax. E.g. the declarative model has no looping constructs.

Two phases to defining linguistic abstraction:

1. Define a new grammatical construct
2. Define its transalton into the kernel language

#### Syntactic Sugar

Shortcut notation for frequently occuring idioms. _Does not provide new abstractions_

## The Single-assigmnet Store

A set of variables that are initially unbound and that can be bound to one value.

### Declarative Variables

Vairables in the single-assigmnet store are declarative variables.

Once bound, the variable stays bound throughout the computation and is indistinguishable from its value.

### Value Store

A store where all variables are bound to a value.

### Value Creation

Binding a variable to a newly created value

If the variable is already bound, the operation will test whether the two value are compatiable.

### Variable Identifiers

A textual name that refers to a store entity from outside the store.

The mapping from a variable identifier to a store is called an **environment**.

### Value Creation with Identifiers

Binding the varuabke identifier X to the list [1 2 3] would look like this:

```
X = [1 2 3]
```

The `=` sign is the bind operaton. After the bind completes, the identifier `X` refers to `x_1`, which is now bound to `[1 2 3]`

### Partial Values

A data strcutrue that may contain unbound variables.

### Variable-variable Binding

Example: two unbound variables `x_1` and `x_2` referred to by identifiers `X` and `Y`. Doing `X=Y`, then `X=[1 2 3]` will result in:

![Variable-varialbe binding](./images/variable-variable-binding.PNG)

### Dataflow Variables

Declarative variables that cause the program to wait until they are bound.

#### Detailed Explination

In declarative model, creating and binding a variable are done separately. When using the variable before it is bound, its called a variable use error (functional programming languages create and bind variables in one step, preventing this error).

Five different ways of handling use errror:

1. Execution continues and no error is given. The variable is undefined. (C++)
2. Execution continues and no erro is given. The variable is initialized to a default value. (Java)
3. Execution stops with an error. (Prolog)
4. Execution is not possible as the compiler detects that there is an execution path to the variable's use that does not initialize. (Java for local variables).
5. Execution waits until the variable is bound then continues. (Oz)

The last one is good for concurrent systems, as a normal operation in another thread can bind the variables. However, it can cause **suspension** that waits forever, for example if a variable name is misspelled and is never bound.

Declarative variables that cause the program to wait until they are bound are called dataflow variables.

## Kernel Language

### Dynamic vs Static Typing

- **Static typing:** All variable types are known at compile time
- **Dynamic typing:** The variable type is known only when the variable is bound.

_The declarative model is dynamically typed._

### Records and Procedures

#### Symbolic Languages

Symbolic languages are languages that provide high level support for records. Makes it easy to create them, take them appart, and manipulate them.

## Kernel Language Semantics

[//]: # 'p. 87'
