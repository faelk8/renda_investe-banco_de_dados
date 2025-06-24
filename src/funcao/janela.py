somas = []

janela = 4
# Loop pelas janelas
for i in range(len(patrimolio_liquido) - janela + 1):
    soma = patrimolio_liquido['lucro_prejuizo'].iloc[i:i+janela].sum()
    somas.append(soma)
