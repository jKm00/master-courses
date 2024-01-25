---
author: Joakim
date: 25.01.24
---

# Block Ciphers

## Tradition block cipher structure

- **Stream cipher:** encrypts digital data one bit/byte at the time
- **Block cipher:** a block of plaintext is treated as a whole and produce a ciphertext block of equal length

Problem with _ideal block ciper_ is that it requires a key of size $2^{n}!$

- **Reversable mapping:** A mapping that can be reversed
- **Irreversible mapping:** A mapping that can't be reversed. For example, if two inputs produce the same output, you can never go back to knowing which input was provided.

### The Feistel Cipher

Execution of two or more simple ciphers in sequence. Making the key length $2^{k}$

- **Substitution:** Each plaintext group is uniquely replaced
- **Permutation:** A sequence of plaintext elements are swapped around (permutated)

- **Diffusion:** Seeks to make the statistical relationship between plaintext and ciphertext as complex as possible.
- **Confusion:** Seeks to make the relationship between the statistics of the ciphertext and the value of the encryption key as complex as possible.

## The Data Encryption Standard (DES)

- Issued in 1977
- Encrypts 64-bit blocks using 56-bit key into 64-bit output
- 1999 recommended to use triple DES (performing the DES encryption three time with three different keys)

### The Avalanche Effect

A small change in the plaintext or the key should produce a significant change in the ciphertext

## The Strength Of DES

- With a key size of 56 bits ($2^{56}$), a brute-force attack would take more than a thousand years. This is with a single machine performing one DES encryption per microsecond.
- Todays computers with multiple cores can break DES in about a year.
- Todays supercomputers should be able to find a key in an hour.

### Timing Attacks

- Information about the key or plaintext is obtained by observing how long it takes a given implementation to perform decryptions on various ciphertexts.

## Block Cipher Design Principles

1. Number of rounds
2. Design of the function F
3. The key scheduling
