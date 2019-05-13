Dado('que estou na tela de cadastro de usuário') do
  @index_page.clicar_icone_cadastro
  @index_page.seleciona_opcao_cadastro
end

Quando('preencho os campos do formulário') do
  @cadastro_page.preenche_cadastro(@nome, @cpf, @data_nascimento)
end

Quando('clico em criar seu cadastro') do
  @cadastro_page.clica_criar_cadastro
end

Então('sou direcionado para a tela inicial da americanas do usuario') do
  usuario = @index_page.retorna_usuario_pagina
  expect(usuario). to eql @nome
end
