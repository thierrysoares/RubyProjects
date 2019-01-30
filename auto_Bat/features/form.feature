#language: pt

Funcionalidade: Testar as funções Criar Usuários, Listar usuários e Iterações

   

    Contexto: Acessar tela principal.

        Dado que o usuario acesse a pagina da automação com batista
        Quando clicar no botão começar automação web
        Então vai para pagina home

    #______________________________________________________________________________________________________________________________________________________________#

    @Verificar
    Cenario: Deletar usuarios cadastrados.

        Quando o usuario clicar no botão Formulário
        E no botão Lista de Usuários do sub-menu que será exibido
        Entao será deletado todos usuarios cadastrados

    #______________________________________________________________________________________________________________________________________________________________#
    
    @feliz
    Esquema do Cenario: Caminho feliz.

        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão criar
        Então é exibida a tela de usuario criado com sucesso com os dados corretos


        Exemplos:

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Bruno      |Lima           |bruno@gmail.com    |               |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Carlos     |Lima           |carlos@gmail.com   |rua teste      |                       |Tester         |Masculino      |30         |   
        |Daniel     |Lima           |daniel@gmail.com   |rua teste      |Universidade Paulista  |               |Masculino      |30         |   
        |Eva        |Lima           |eva@gmail.com      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Flavia     |Lima           |flavia@gmail.com   |rua teste      |Universidade Paulista  |Tester         |               |30         |   
        |Gisele     |Lima           |gisele@gmail.com   |rua teste      |Universidade Paulista  |Tester         |Masculino      |           |   
        |Helena     |Lima           |helena@gmail.com   |               |                       |               |               |           |   
    #__________________________________________________________________________________________________________________________________________________________#
   
    @alternativo
    Esquema do Cenario: Caminhos alternativos.

        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão criar
        Então ele exibira a seguinte mensagem de erro "<mensagem>"

        Exemplos:

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |mensagem          |
        |           |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   name.blank     | 
        |Adriano    |               |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         | sobrenome.blank  | 
        |Adriano    |Lima           |                   |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.blank    | 
        |Adriano    |Lima           |adriano@gmail      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   email.invalid  | 

    #__________________________________________________________________________________________________________________________________________________________#
   
    @voltar
    Esquema do Cenario: Caminho do Botão Voltar

        Quando o usuario clicar no botão Formulário
        E no botão Criar Usuários do sub-menu que sera exibido
        E o usuario preenche os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>"
        E clicar no botão voltar
        Então é exibida a tela home
 

        Exemplos:

        |nome       |sobrenome      |email              |endereco       |universidade           |profissao      |genero         |idade      |
        |Adriano    |Lima           |adriano@gmail.com  |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |
    #__________________________________________________________________________________________________________________________________________________________#
    
    @comparar
    Esquema do Cenario: Comparando usuarios cadastrados

         Quando o usuario clicar no botão Formulário
         E no botão Lista de Usuários do sub-menu que será exibido
         E exibir uma tabela com os dados respectivos a "<nome>", "<sobrenome>", "<email>", "<endereco>", "<universidade>", "<profissao>", "<genero>" e "<idade>" cadastrados anteriormente
         Então será clicado no botão VOLTAR para redirecionar á pagina home

        Exemplos: Valores

        | nome      | sobrenome     |email              | endereco      | universidade          | profissao     | genero        | idade     |
        | Adriano   | Lima          | adriano@gmail.com | rua teste     | Universidade Paulista | Tester        | Masculino     | 30        |
        |Bruno      |Lima           |bruno@gmail.com    |               |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Carlos     |Lima           |carlos@gmail.com   |rua teste      |                       |Tester         |Masculino      |30         |   
        |Daniel     |Lima           |daniel@gmail.com   |rua teste      |Universidade Paulista  |               |Masculino      |30         |   
        |Eva        |Lima           |eva@gmail.com      |rua teste      |Universidade Paulista  |Tester         |Masculino      |30         |   
        |Flavia     |Lima           |flavia@gmail.com   |rua teste      |Universidade Paulista  |Tester         |               |30         |   
        |Gisele     |Lima           |gisele@gmail.com   |rua teste      |Universidade Paulista  |Tester         |Masculino      |           |   
        |Helena     |Lima           |helena@gmail.com   |               |                       |               |               |           |   
    #__________________________________________________________________________________________________________________________________________________________#
    @Limpar
     Cenario: Limpando a lista de usuários cadastrados

      	Quando o usuario clicar no botão Formulário
      	E no botão Lista de Usuários do sub-menu que será exibido
		Então serão deletados todos os dados e voltará para a home
    #__________________________________________________________________________________________________________________________________________________________#
    @drag
    Cenario: Arrastando elementos 

        Quando o usuario clicar no botão Iterações
        E no botão Drag And Drop do sub-menu que será exibido
        Então a carinha será arrastada para dentro do quadrado e voltará para a home
    #__________________________________________________________________________________________________________________________________________________________#

       
