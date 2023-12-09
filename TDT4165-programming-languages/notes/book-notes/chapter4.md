---
Author: Joakim
---

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

[//]: # 'p. 311'
