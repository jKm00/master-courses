---
author: Joakim
date: 19.01.24
---

# Classical Encryption

## Basic Definitions

- **Plaintext:** The original message
- **Ciphertext:** The coded message
- **Enciphering/encryption:** The process of converting from plaintext to ciphertext
- **Deciphering/decryption:** The process of converting from ciphertext to plaintext
- **Cryptographic system/cipher:** A scheme of how to encrypt/decrypt
- **Cryptoanalysis:** Techniques used for deciphering a message without any knowledge of the enciphering detail

## Symmetric & Asymmetric Cryptography

- Symmetric:
  - Keys are only known by the sender and receiver
  - Requires a secure channel for transmission of the keys
- Asymmetric:
  - Public and private key
  - Allow for encryption of messages and creation of digital signatures

## Notation

A message $X = [X_{1}, X_{2}, ..., X_{m}]$  
A key $K = [K_{1}, K_{2}, ..., K_{j}]$  
With a message $X$ and a key $K$, the encryption algorithm forms the cipher $Y = [Y_{1}, Y_{2}, ..., Y_{N}]$ also written:

$$Y = E(K, X)$$

With the decryption algorithm $D$, the receiver can invert the ciphertext with:

$$X = D(K, Y)$$

## Cryptanalysis and Brute-Force Attack

- **Cryptanalysis:** Use knowledge of some plaintext or even pairs of plaintext and ciphertext.
- **Brute-force attack:** Attacker tries every possible key
  - Need to recognize that the plaintext is the one they are looking for. If the plaintext is English, it's pretty easy, however, if the text is for example compressed, it can be much more difficult.

### Frequency of characters

As part of cryptoanalysis, you can create a diagram showing the frequency of each character.

## Security of a scheme

- An encryption scheme is **computationally secure** if either of these criteria are met:
  - The cost of breaking the cipher exceeds the value of the encrypted information
  - The time required to break the cipher exceeds the useful lifetime of the information

## Basic cipher operations

- **Transposition:** characters in the plaintext are mixed up with each other
- **Substitution:** each character is replaced by a different character

### Transposition

#### Rail fence technique

Rewrite the plaintext in a sequence of diagonals

Example: encipher the message "meet me after the toga party" with a rail fence of depth 2:

```
m e m a t r h t g p r y
 e t e f e t e o a a t
```

Encrypted message is then: MEMATRHTGPRYETEFETEOAAT

### Substitution

Letters of the plaintext are replaced by other letters/numbers/symbols.

#### Caesar Cipher

Replacing letters of the alphabet with letters standing $k$ places further down the alphabet.

Example: $k = 3$

For each plaintext letter $p$, substitute the ciphertext letter $C:^{2}$

$$C = E(3, p) = (p + 3) mod 26$$

More general: ($k$ in the range 1 to 25)

$$C = E(k, p) = (p + k) mod 26$$

The decryption algorithm is then:

$$ p = D(k, C) = (C - k) mod 26$$

Easy to brute force if it is known that the Caesar Cipher is used:

1. Encryption and decryption are known
2. There are only 25 keys
3. The language of the plaintext is known and easily recognizable

#### Random simple substitution cipher

- Randomly assign plaintext characters to ciphertext characters
- The key is the table explaining the mapping
- With an alphabet of 26 characters, there are 26! keys (makes brute force much harder)

#### Polyalphabetic substitution

- Uses multiple mappings from plaintext to ciphertext
- Used to smooth the frequency distribution so direct frequency analysis is no longer effective.
