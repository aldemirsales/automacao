Dado('que os <produtos desejados são:>') do |table|
  @dados = table.hashes
end

Quando('eu adiciono todos os itens') do
  @dados.each do |index|
    @index_page.pesquisa_item(index['produto'])
    @index_page.clicar_botao_pesquisa
    @index_page.seleciona_produto(index['img_compra'])
    @index_page.adiciona_na_cesta
  end
end

Então('vejo todos os itens no carrinho') do
  @dados.each do |index|
    produto = @index_page.produtos_cesta(index['img_cestinha'])
    expect(index['descricao']).to eql produto
  end
end
