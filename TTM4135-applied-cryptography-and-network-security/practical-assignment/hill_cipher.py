from sympy import Matrix
import sys

# Formula:
# C = KP => K = CP^-1

# Using 0.txt
with open('ciphertexts/0.txt', 'r') as file:
    ciphertext = file.read().strip()
converted_ciphertext = ciphertext.replace(',', '0').replace('.', '1').replace('-', '2')

# Determine if the ciphertext should be printed (use --p to print)
print_ciphertext = '--p' in sys.argv

if print_ciphertext:
    print(f'Converted ciphertext: {converted_ciphertext}')
    print()

alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012'
char_to_num = {char: idx for idx, char in enumerate(alphabet)}
num_to_char = {idx: char for idx, char in enumerate(alphabet)}

def calculate_key(TH, HE):
    # Plaintext matrix
    p = Matrix([
        [char_to_num['T'], char_to_num['H']],
        [char_to_num['H'], char_to_num['E']]
    ])

    # Ciphertext matrix
    c = Matrix([
        [char_to_num[TH[0]], char_to_num[HE[0]]],
        [char_to_num[TH[1]], char_to_num[HE[1]]]
    ])

    # Inverse plaintext matrix
    p_inv = p.inv_mod(29)

    # Key matrix
    k_tmp = c * p_inv
    k = k_tmp.applyfunc(lambda x: x % 29)
    
    return k

# TH / HE for 0.txt
TH = [['A', 'I'], ['A', 'I'], ['X', 'Z'], ['X', 'Z'], ['J', 'H'], ['J', 'H']]
HE = [['X', 'Z'], ['J', 'H'], ['A', 'I'], ['J', 'H'], ['A', 'I'], ['X', 'Z']]

# TH / HE for 1.txt
# TH = [['Z', 'W'], ['Z', 'W'], ['I', 'Z'], ['I', 'Z'], ['S', 'C'], ['S', 'C']]
# HE = [['I', 'Z'], ['S', 'C'], ['Z', 'W'], ['S', 'C'], ['Z', 'W'], ['I', 'Z']]

# TH / HE for 2.txt
# TH = [['R', 'A'], ['Q', 'R']]
# HE = [['Q', 'R'], ['R', 'A']]

# TH / HE for 3.txt
# TH = [['K', 'L'], ['K', 'L'], ['G', 'K'], ['G', 'K'], ['L', 'P'], ['L', 'P']]
# HE = [['G', 'K'], ['L', 'P'], ['K', 'L'], ['L', 'P'], ['K', 'L'], ['G', 'K']]

for i in range(len(TH)):
    key = calculate_key(TH[i], HE[i])

    print(f'TH = {TH[i]} and HE = {HE[i]}')
    print(f'K: {key}')
    print()
