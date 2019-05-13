#language: pt

@realizar_compra
Funcionalidade: Realizar compra sem sucesso
  Sendo um novo usuário 
  Realizo meu cadastro
  Seleciono os produtos
  Realizo o processo de compra sem sucesso

  @cadastro
  Cenário: Realizar cadastro no sistema
    Dado que estou na tela de cadastro de usuário
    Quando preencho os campos do formulário
    E clico em criar seu cadastro
    Então sou direcionado para a tela inicial da americanas do usuario
  
    Dado que os <produtos desejados são:>
    dados/carrinho.csv
    Quando eu adiciono todos os itens
    Então vejo todos os itens no carrinho

    Dado que já tenho meus produtos
    Quando clico em continuar
    E preencho meu CEP, com complemento
    Então preencho os <dados de pagamento>, finalizando a operação
    dados/cartao_credito.csv