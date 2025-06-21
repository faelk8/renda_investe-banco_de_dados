### Tarefas
Foi concluído:<br>
* Ativo Circulante<br>
* Ativo Não Circulante<br>
* Passivo Circulante<br>
* Passivo Não Circulante<br>

### Realizar os seguintes calculos para validar 


colunas_ativo_circulante = [
    'Caixa e Equivalentes de Caixa',
    'Aplicações Financeiras',
    'Contas a Receber',
    'Estoques',
    'Ativos Biológicos',
    'Tributos a Recuperar',
    'Despesas Antecipadas',
    'Outros Ativos Circulantes'
]
ativo_circulante['total'] = ativo_circulante[colunas_ativo_circulante].sum(axis=1)


colunas_ativo_nao_circulante = [
    'Ativo Realizável a Longo Prazo',
    'Investimentos',
    'Imobilizado',
    'Intangível',
]
ativo_nao_circulante['total'] = ativo_nao_circulante[colunas_ativo_nao_circulante].sum(axis=1)


colunas_passivo_circulante = [
    'Obrigações Sociais e Trabalhistas',
    'Fornecedores',
    'Obrigações Fiscais',
    'Empréstimos e Financiamentos',
    'Outras Obrigações',
    'Passivos sobre Ativos Não-Correntes a Venda e Descontinuados'
]
passivo_circulante['total'] = passivo_circulante[colunas_passivo_circulante].sum(axis=1)



calculo_ativo = ativo_circulante['total'].iloc[0] + ativo_nao_circulante['total'].iloc[0]<br>
calculo_disponibilidade = ativo_circulante['Caixa e Equivalentes de Caixa'].iloc[0] + ativo_circulante['Aplicações Financeiras'].iloc[0]<br>
calculo_ativo_circulante = ativo_circulante['total'].iloc[0]<br>
calculo_divida_bruta = passivo_nao_circulante['Empréstimos e Financiamentos'].iloc[0] + passivo_circulante['Empréstimos e Financiamentos'].iloc[0]<br>
calculo_divida_liquida = calculo_divida_bruta - calculo_disponibilidade<br>