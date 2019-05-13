Projeto de automação de testes para avaliação da Avanade

Automação do site https://www.americanas.com.br/:

#Features:
* Busca de um iPhone X e colocar na cesta;
* Busca de um Galaxy S10 e colocar na cesta;
* Processo de login / cadastro novo;
* Pagamento com cartão de crédito fake;

######## Passos para execução ########
1 - Baixar o driver de execução do Mozila Fireox
Link: https://github.com/mozilla/geckodriver/releases
OBS: Baixar a versão de acordo com seu sistema operacional

2 - Descompactar a pasta e pegar apenas o arquivo executável
3 - Criar as pastas "tools -> selenium" na raíz da unidade "C" e colar o executável copiado
4 - Ir em -> Painel de Controle\Sistema e Segurança\Sistema -> Configurações avançadas do sistema
5 - Clicar em "Variáveis de Ambiente"
6 - Procurar pela variável de ambiente "Path" e clicar em editar
7 - Clicar em "Novo", adicionar o caminho "C:\tools\selenium" e confirmar a inclusão, clicando em OK (até fechar tudo)
8 - Abrir a pasta do projeto e executar o CMD nesta pasta
9 - digitar: cucumber no cmd

Pronto, a execução irá iniciar!! :-)
