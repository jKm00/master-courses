from sympy import Matrix
import sys

# Define alphabet and dictionaries for converting characters to numbers and vice versa
alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012'
char_to_num = {char: idx for idx, char in enumerate(alphabet)}
num_to_char = {idx: char for idx, char in enumerate(alphabet)}

def calculate_key(p, c):
    """Calcuates the key given a plaintext matrix that matches a ciphertext matrix."""

    # Formula:
    # C = KP => K = CP^-1

    # Plaintext matrix
    p_num = Matrix([
        [char_to_num[str(p[0, 0])], char_to_num[str(p[0, 1])]],
        [char_to_num[str(p[1, 0])], char_to_num[str(p[1, 1])]]
    ])

    # Ciphertext matrix
    c_num = Matrix([
        [char_to_num[str(c[0, 0])], char_to_num[str(c[0, 1])]],
        [char_to_num[str(c[1, 0])], char_to_num[str(c[1, 1])]]
    ])

    # Inverse plaintext matrix
    p_inv = p_num.inv_mod(29)

    # Key matrix
    k = (c_num * p_inv).applyfunc(lambda x: x % 29)
    
    return k

def print_keys(p, c_possibilities):
    """Prints the keys for all possible ciphertexts given a plaintext matrix and a list of ciphertext matrices."""
    for index, c in enumerate(c_possibilities):
        key = calculate_key(p, c)
        print(f'K_{index + 1}: {key}')

def run(file_path, p, c_possibilities):
    # Read file
    with open(file_path, 'r') as file:
        ciphertext = file.read().strip()
        converted_ciphertext = ciphertext.replace(',', '0').replace('.', '1').replace('-', '2')

    # Print ciphertext (use --p flag to print)
    print_ciphertext = '--p' in sys.argv
    if print_ciphertext:
        print('Converted ciphertext:')
        print(converted_ciphertext)
        print()

    # Calculate keys
    print_keys(p, c_possibilities)

#########################################
# Configure file path, plaintext matrix #
# and all possible ciphertexts          #
#########################################

# Text file
file_path = 'ciphertexts/0.txt'

# Most common bigrams in English
p = Matrix([
    ['T', 'H'],
    ['H', 'E']
])

# All possible ciphertexts for the given plaintext 
# (derived from frequency analysis on the ciphertext)
c_possibilities = [
    Matrix([
        ['A', 'X'],
        ['I', 'Z']
    ]),
    Matrix([
        ['A', 'J'],
        ['I', 'H']
    ]),
    Matrix([
        ['X', 'A'],
        ['Z', 'I']
    ]),
    Matrix([
        ['X', 'J'],
        ['Z', 'H']
    ]),
    Matrix([
        ['J', 'A'],
        ['H', 'I']
    ]),
    Matrix([
        ['J', 'X'],
        ['H', 'Z']
    ])
]

run(file_path, p, c_possibilities)
