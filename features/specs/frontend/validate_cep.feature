#language: pt

Funcionalidade: Eu como usuário quero colocar meu CEP e que ele seja confirmado corretamente
    
    Cenário: Validar CEP Válido
        Dado seleciono um produto da vitrine
        Quando insiro o CEP "02331-003"
        Então ele deve ser validado corretamente
    
    
    Cenário: Validar CEP após inserir o produto no carrinho
        Dado seleciono um produto da vitrine
        Quando insiro o CEP "02331-003"
        E adiciono no carrinho
        Então o CEP informado anteriormente deve ser o mesmo

