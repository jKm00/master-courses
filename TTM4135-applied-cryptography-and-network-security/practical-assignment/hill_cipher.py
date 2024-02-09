from sympy import Matrix

#########################################
# Configure file path, plaintext matrix #
# and all possible ciphertexts          #
#########################################

file_path = 'ciphertexts/0.txt'
p = Matrix([
    ['T', 'H'],
    ['H', 'E']
])
# An array of all possible bigram candidates for `TH` and `HE`
bigram_candidates = [
    ['A', 'I'],
    ['X', 'Z'],
    ['J', 'H']
]
print_ciphertext = True

#########################################
# Don't change anything below this line #
#########################################

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

def run(file_path, p, bigram_candidates):
    # Read file
    with open(file_path, 'r') as file:
        ciphertext = file.read().strip()
        converted_ciphertext = ciphertext.replace(',', '0').replace('.', '1').replace('-', '2')

    # Print ciphertext
    if print_ciphertext:
        print('Converted ciphertext:')
        print(converted_ciphertext)
        print()

    # Print all possible keys
    index = 0
    for c_0 in bigram_candidates:
        for c_1 in bigram_candidates:
            if c_0 == c_1:
                continue
            c = Matrix([
                [c_0[0], c_1[0]],
                [c_0[1], c_1[1]]
            ])
            print(f'K_{index + 1}: {calculate_key(p, c)}')
            index += 1

run(file_path, p, bigram_candidates)
