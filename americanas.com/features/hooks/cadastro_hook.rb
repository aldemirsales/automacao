Before '@realizar_compra' do
  visit ''
  page.current_window.resize_to(1366, 768)
  @index_page = Index.new
  @cadastro_page = Cadastro.new
  @compra_page = Compra.new

  # Variaveis qe serão usadas em todo o processo de cadastro e validação
  @nome = Faker::Name.male_first_name
  @cpf = Faker::CPF.numeric
  @data_nascimento = Faker::Date.birthday(18, 65)
end
