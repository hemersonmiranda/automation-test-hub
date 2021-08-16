#language: pt

Funcionalidade: Eu como usuário quero saber os livros que tem e cadastrar um novo livro
    
    Cenário: Pegar todos os livros cadastrados
        Dado tenho o endereço da api
        Quando faço a requisição de consultar todos os livros
        Então a API retorna todos os livros com o status code 200

    Cenário: Cadastrar um novo Livro
        Dado tenho o endereço da api
        E o body de requisição
        Quando faço a requisição de cadastrar um novo livri
        Então o livro é cadastrado corretamente e retorna o status code 200
    
    @api
    Cenário: Consultar livro por id
        Dado tenho o endereço da api
        Quando faço a requisição de consultar livro por id
        Então a API retorna todos os livros com o status code 200

