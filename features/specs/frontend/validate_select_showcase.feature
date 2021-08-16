#language: pt

Funcionalidade: Eu como usuário quero selecionar um produto na vitrine e ele seja carregado corretamente

    Cenário: Validar as informações da vitrine de vestuário condizem com as informações da página
        Dado seleciono o departamento de 'Moda'
        Quando seleciono um produto qualquer da vitrine
        Então as informações da vitrine devem condizer com a da página


