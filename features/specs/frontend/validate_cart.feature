#language: pt

Funcionalidade: Eu como usuário quero manipular meus produtos corretamente no carrinho

    Cenário: Validar adição de um produto no carrinho
        Dado tenho um produto no carrinho
        Quando adiciono o mesmo produto
        Então o produto é multiplicado corretamente

    Cenário: Validar exclusão de produto
        Dado tenho um produto no carrinho
        Quando exluo o mesmo produto
        Então o produto deve ser removido corretamente