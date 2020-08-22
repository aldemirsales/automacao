Projeto de automação de testes em ruby para brincar um pouco

Automação do site https://www.americanas.com.br/:

#Features:
* Busca de um iPhone X e colocar na cesta;
* Busca de um Galaxy S10 e colocar na cesta;
* Processo de login / cadastro novo;
* Pagamento com cartão de crédito fake;

######## Passos para execução ########
* Baixar o driver de execução do Mozila Fireox
Link: https://github.com/mozilla/geckodriver/releases
OBS: Baixar a versão de acordo com seu sistema operacional

* Descompactar a pasta e pegar apenas o arquivo executável
* Criar as pastas "tools -> selenium" na raíz da unidade "C" e colar o executável copiado
* Ir em -> Painel de Controle\Sistema e Segurança\Sistema -> Configurações avançadas do sistema
* Clicar em "Variáveis de Ambiente"
* Procurar pela variável de ambiente "Path" e clicar em editar
* Clicar em "Novo", adicionar o caminho "C:\tools\selenium" e confirmar a inclusão, clicando em OK (até fechar tudo)
* Abrir a pasta do projeto e executar o CMD nesta pasta
* digitar: "bundle install" no cmd
* digitar: "cucumber" no cmd

Pronto, a execução irá iniciar!! :-)
