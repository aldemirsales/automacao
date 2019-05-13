class Index
  include Capybara::DSL

  def clicar_icone_cadastro
    find('.usr-actions').click
  end

  def seleciona_opcao_cadastro
    find('.usr-signup').click
  end

  def retorna_usuario_pagina
    find('.usr-nick').text
  end

  def pesquisa_item(item)
    fill_in 'conteudo', with: item
  end

  def clicar_botao_pesquisa
    find('#h_search-btn').click
  end

  def seleciona_produto(img_compra)
    find("img[src*='#{img_compra}']").click
  end

  def adiciona_na_cesta
    find('#btn-buy').click
  end

  def produtos_cesta(img_cestinha)
    elemento = find("img[src*='#{img_cestinha}']")
    elemento[:alt]
  end

  def ir_para_login
    find('.usr-signin').click
  end

  def continuar_compra
    find('.btn-fat').click
  end
end
