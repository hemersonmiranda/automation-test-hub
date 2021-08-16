#language: pt

Funcionalidade: Eu como usuário quero buscar corretamente os produtos

    Cenário: Validar busca de um produto que não tenha garantia
        Dado eu acesse o site da Magazine Luiza
        Quando selecionar o departamento 'Moda'
        E seleciona um produto qualquer
        Então deverá carregar todas os produtos de moda corretamente
