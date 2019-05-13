Dado('que já tenho meus produtos') do
  # produtos já listados e validados em carrinho_steps
end

Quando('clico em continuar') do
  @index_page.continuar_compra
end

Quando('preencho meu CEP, com complemento') do
  @compra_page.preenche_cep('04206906')
  @compra_page.completa_endereco('01', 'Casa', 'Teste automatico')
  @compra_page.clica_entregar_neste_endereco
end

Quando('preencho os <dados de pagamento>, finalizando a operação') do |table|
  @dados = table.hashes
  @dados.each do |index|
    @compra_page.preenche_pagamento_cartao(index['numero_cartao'], index['nome_impresso'], index['cod_seguranca'])
  end
end