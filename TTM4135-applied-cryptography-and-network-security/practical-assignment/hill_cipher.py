import numpy as np
from sympy import Matrix

# C = KP => K = CP^-1

# TH = AI
# HE = IC / ID

ciphertext = 'XJFPJEERFTUKNEIFWFKAWQFPLNCBNEMCBOGIJO.QVC-UMHYUAIIFJHAIHPIVQSVJYLAO.BQS,,.XXZ.WTIFM,HFJXZLBQ.QUW-FYAONRBDXXTIOS,W.XZMSBVHJ,LPKAJHQ.JMF,FVBIIGZ,.QVC,OAI,-SETIZXFPGYGRIRUMFMNAOYAH-TPXCBHA,VMGCBA,HPPBJCMAETTJXTFTB,SS.DMAEYWNFPHPCUXZKGMOBIBEDKAIIKUBHSKQRRKGQTGRLN,-LEQTMA-KUHICRHPNWFZM.UVCOYNJ-FOVFPYUWQXTFYBNGLMSAOYLCCDJXZIRBDXXIDPK,TB,GZFMYW,,XZRHBJBDXXIDG,AIGZSWQ.XZBHF,KHHAHAZTOSYAJHGR.DAOBAMXKNG.IGWFRQREZTJCBOQ.XZT-ITKGYUAIUEMQBONTVMXZMWICOY.UYLYAJHRWN,URAIRHWJFYUMFMMXZAXKYWEH.QKUXTXUTGWQ.XMXTIH,,-TIPWVYE.ZMTZJMMWVMVEZWT-FP,,T.AOYSJHONFYZTMXTIH,,-TIPWRMAIMWGZVCF-NTVHPYJHIDFCUGYW.DXTNTZ,-KMWECTZAOFTTGHAWHIDPKOMDRXZIAVVNYAIPXZTUHGLYSKHQ.ETTGJ,IDJHONTGFXUKKAEYNQT.XZ.QSLZWXQAI-EG,AIJHUKQ.VMXZFYUBLPLEIXAUSSW-QUGZZ,KADD,T-RYLQTGRJHAIFYAHDRRHSFOMXTYXZHAIXTSEUHLMQSQ.XZFVSS-KKGYUAICBVMJ.-FIKKRNYT-KGOXKGSWDRT.XZICONKJWSXZTGYWLNB,FMMWPXWSXZRERRICJKRWVVSPJMSL-KIAAIDROMDRJHZWMSCUAOLLMGJ.-FITVMERFTUKNEKGCGNDJCA,TIIR-UXZZT.GTZVVRHTGPQKJEWAIXZT-FLXZKGPXRTUVBOLNXZDRAHHSMSCUOMQSGRFMB,FMJHHA.XTICLRHXSZW.DXT,VDJZZGRBHF,H.RENAOYUMYLAIIC-LGRXXU.FMJHVNGRA,AIYPVCUJLKGYGRHSZ,PUJH'
converted_ciphertext = ciphertext.replace(',', '0').replace('.', '1').replace('-', '2')

print(f'Converted ciphertext: {converted_ciphertext}')

P = Matrix([
    [19, 7],
    [7, 4]
])

C = Matrix([
    [0, 8],
    [8, 3]
])

P_inv = P.inv_mod(29)

K = C * P_inv

K_mod_29 = K.applyfunc(lambda x: x % 29)

K_inv_mod_29 = K_mod_29.inv_mod(29)

print(f'Key: {K_mod_29}')
print(f'Key inv: {K_inv_mod_29}')
