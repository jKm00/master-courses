---
Date: 19.09.23
Place: R2
---

# Kernel language syntax

## Statement

A statement can be a variable value unification:

```
<statement> ::== <id> = <value>
<statement> ::== <id> = <id>
<statement> ::== <if condition>
<statement> ::== <record>
<statement> ::== <procedure>
```

A statement can be apattern matching statement:

```
<statement> ::== case <id> of <pattern> then
                    <statment> else <statement> end
```

## Record

```
<record> ::== <literal>
<record> ::== <literal> ( { <feature> : <id> } )
```

## Type

A type is a set of values together with a set of operation on these values.

### Example

- String has operations like ´splice()´, ´substring()´, etc...
- List has operations like ´lenght()´, ´stream()´, etc...

### Type checking

Is validation of program aimed at detecting illegal application of operations.

Can be:

- **Static:** Performed before a program is executed
- **Dynamic:** Performed during the execution of a program, before the execution of each individual operation.