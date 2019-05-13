Dado('que estou na tela inicial do site Americanas.com') do
  # implementado no hooks
end

Dado('seleciono a opção de entrar no sistema') do
  @index_page.clicar_icone_cadastro
  @index_page.ir_para_login
end

Quando('informo meu <email e senha>') do |table|
  dados = table.hashes
  dados.each do |index|
    @login_page.realizar_login(index['email'].downcase, index['senha'])
  end
end

Então('sou direcionado para tela inicial do site Americanas.com') do
  usuario = @index_page.retorna_usuario_pagina
  expect(usuario). to eql @nome
end
