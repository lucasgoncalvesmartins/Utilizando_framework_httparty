#language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informacoes
    O usuario do sistema
    Deseja poder consultar informacoes de funcionarios

    Cenario: Buscar informacoes de um funcionario
        Dado que o usuario consulte informacoes de um funcionario
        Quando ele realizar a pesquisa
        Entao uma lista de funcionarios deve retornar 

    @cenario_dois
    Cenario: Cadastrar funcionario
        Dado que o usuario cadastre um novofuncionario
        Quando ele deve enviar as informacoes do funcionario
        Entao esse funcionario sera cadastrado 

    @cenario_tres
    Cenario: Alterar informacoes cadastrais
        Dado que o usuario altere uma informacao de um funcionario
        Quando ele enviar as novas informacoes 
        Entao as informcoes serao alteradas
