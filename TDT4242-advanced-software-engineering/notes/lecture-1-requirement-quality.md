---
author: Joakim
place: S1
date: 15.01.24
---

# Requirements Quality

## Guided Natural Language

- Define different terms, to make sure people with different backgrounds use the same term for the same thing.

## Boilerplate-based Requirement

- Statement-level template: makes each statement follow the same structure.

_Example: The \<system name> shall \<function> \<object> every \<performance> \<unit>_

## User Stories

- Short, simple description of a feature from the user's perspective.

## Use Case

- Description of how users will perform certain tasks in the system.

## Exercise 1

Withdraw cash from ATM

### Pre-condition

- User has a valid card
- There is an available ATM (online)

### Post-condition

- Get your card back
- Money is dispatched from the ATM

### Normal Flow Events

1. Insert card
2. Enter pin
3. Select withdraw
4. Select amount

### Alternative Flow

2.1 Invalid pin -> try max three times  
4.1 ATM does not have enough cash for the withdrawn amount -> let the user know, and cancel

### Exceptions

4.2 Not enough balance for the withdrawn amount -> let the user know, and cancel

### Alternative Flow vs Exceptions

- Alternative flows are not part of the main flow, but still expected behavior. Exceptions are events that are not expected.

## Completeness

- Requirements cover all the areas

## Unambiguous

- Each statement should only have one interpretation.

## Consistent

- Statements should not have any conflicts.

## Correctness

### Forward referencing

- Should not reference something that is not defined

### Opacity

- TBD

### Noise

- TBD
