class Cadastro
  include Capybara::DSL

  def preenche_cadastro(nome,cpf,data_nascimento)
    data = data_nascimento.to_s.split('-')
    input = find('#gender')

    # Preenche o fomulario
    fill_in 'email', with: "#{nome}@teste.com.br"
    fill_in 'password', with: '123456@teste'
    fill_in 'cpf', with: cpf
    fill_in 'name', with: nome
    fill_in 'birthday', with: "#{data[2]}-#{data[1]}-#{data[0]}"
    input.find('label', text: 'masculino').click
    fill_in 'phone', with: '81999990000'
    sleep 3
  end

  def clica_criar_cadastro
    find('.cadastroForm-submit').click
  end
end
