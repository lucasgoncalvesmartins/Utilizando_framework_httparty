# Utilizando o Framework HTTParty para Testes de API

## Descrição

Este projeto demonstra a utilização do framework HTTParty em Ruby para realizar testes de API. Ele foi desenvolvido para interagir com uma API de exemplo de gerenciamento de funcionários, permitindo a execução de operações CRUD (Create, Read, Update, Delete) através de cenários de BDD (Behavior-Driven Development) com Cucumber.

## Tecnologias Utilizadas

As principais tecnologias e bibliotecas utilizadas neste projeto são:

*   **Ruby**: Linguagem de programação.
*   **Cucumber**: Framework para BDD, permitindo a escrita de testes em linguagem natural.
*   **HTTParty**: Biblioteca Ruby para fazer requisições HTTP de forma simples e eficiente.
*   **RSpec**: Framework de testes para Ruby (utilizado para asserções).
*   **Faker**: Biblioteca para geração de dados falsos, útil para criar dados de teste.

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

*   Ruby (versão 2.7.x ou superior recomendada)
*   Bundler (gerenciador de dependências Ruby)

## Instalação

Siga os passos abaixo para configurar o ambiente do projeto:

1.  Clone o repositório:
    ```bash
    git clone <URL_DO_REPOSITORIO>
    cd Utilizando_framework_httparty
    ```
2.  Instale as dependências do Ruby:
    ```bash
    bundle install
    ```

## Como Executar os Testes

Para executar todos os cenários de teste, utilize o comando:

```bash
cucumber
```

Para executar cenários específicos, você pode usar tags:

```bash
cucumber --tags @cenario_um
```

## Estrutura do Projeto

A estrutura de diretórios do projeto é organizada da seguinte forma:

```
. 
├── features
│   ├── bdd
│   │   └── get.feature
│   ├── requests
│   │   └── employee.request.rb
│   ├── step_definitions
│   │   └── employee.rb
│   └── support
│       ├── base_url.rb
│       ├── database.rb
│       └── env.rb
├── Gemfile
├── Gemfile.lock
└── README.md
```

*   `features/bdd/get.feature`: Contém os cenários de BDD escritos em Gherkin.
*   `features/requests/employee.request.rb`: Define os métodos para interagir com a API de funcionários usando HTTParty.
*   `features/step_definitions/employee.rb`: Implementa os passos dos cenários de BDD.
*   `features/support/base_url.rb`: Configura a `base_uri` e os `headers` para as requisições HTTParty.
*   `features/support/env.rb`: Carrega as bibliotecas necessárias para os testes.

## Exemplos de Uso (Cenários BDD)

O arquivo `get.feature` define os seguintes cenários:

*   **Buscar informações de um funcionário**: Testa a consulta de dados de funcionários.
*   **Cadastrar funcionário**: Testa a criação de um novo registro de funcionário.
*   **Alterar informações cadastrais**: Testa a atualização de dados de um funcionário existente.
*   **Deletar cadastro de funcionário**: Testa a remoção de um registro de funcionário.

## API Utilizada

Este projeto utiliza a API de exemplo `http://dummy.restapiexample.com/api/v1` para simular as operações de gerenciamento de funcionários.

## Autor

**Projeto realizado para fins de estudos e conhecimento em teste de QA**
