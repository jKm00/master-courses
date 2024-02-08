from sympy import Matrix

# Formula:
# C = KP => K = CP^-1

# Using 0.txt
with open('ciphertexts/0.txt', 'r') as file:
    ciphertext = file.read().strip()
converted_ciphertext = ciphertext.replace(',', '0').replace('.', '1').replace('-', '2')

if True:
    print(f'Converted ciphertext: {converted_ciphertext}')
    print()

alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012'
char_to_num = {char: idx for idx, char in enumerate(alphabet)}
num_to_char = {idx: char for idx, char in enumerate(alphabet)}

TH = ['A', 'I']
HE = ['X', 'Z']

P = Matrix([
    [char_to_num['T'], char_to_num['H']],
    [char_to_num['H'], char_to_num['E']]
])

C = Matrix([
    [char_to_num[TH[0]], char_to_num[HE[0]]],
    [char_to_num[TH[1]], char_to_num[HE[1]]]
])

P_inv = P.inv_mod(29)

K = C * P_inv

K_mod_29 = K.applyfunc(lambda x: x % 29)

K_inv_mod_29 = K_mod_29.inv_mod(29)

print(f'Key: {K_mod_29}')
print(f'Key inv: {K_inv_mod_29}')
