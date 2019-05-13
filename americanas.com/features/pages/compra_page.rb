class Compra
  include Capybara::DSL

  def preenche_cep(cep)
    fill_in 'editCep', with: cep
  end

  def completa_endereco(numero, complemento, referencia)
    fill_in 'editAddressNumber', with: numero
    fill_in 'editAddressAdditionalInfo', with: complemento
    fill_in 'editAddressReference', with: referencia
  end

  def clica_entregar_neste_endereco
    find('.btn-primary').click
  end

  def clica_pagamento_cc
    find('.btn-thin').click
  end

  def preenche_pagamento_cartao(nr_cartao, nome, cod_seguranca)
    drop_mes = find('#creditCard-ccMonth')
    drop_ano = find('#creditCard-ccYear')

    fill_in 'creditCardCardNumber', with: nr_cartao
    fill_in 'creditCardCardName', with: nome
    drop_mes.all('option').sample.select_option
    drop_ano.all('option').sample.select_option
    fill_in 'creditCardCardSecurityCode', with: cod_seguranca # 123
  end
end
