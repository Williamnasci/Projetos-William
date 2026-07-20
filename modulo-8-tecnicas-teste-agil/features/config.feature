# language: pt
Funcionalidade: Configuração de produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que eu esteja na página de configuração do produto

  Cenário: Configurar produto com cor, tamanho e quantidade preenchidos
    Quando eu selecionar uma cor, um tamanho e uma quantidade
    Então o produto deve estar pronto para ser inserido no carrinho

  Cenário: Tentar configurar produto sem selecionar a cor
    Quando eu selecionar um tamanho e uma quantidade
    E eu não selecionar uma cor
    Então o produto não deve estar disponível para inserção no carrinho
    E a seleção de cor deve continuar obrigatória

  Cenário: Tentar configurar produto sem selecionar o tamanho
    Quando eu selecionar uma cor e uma quantidade
    E eu não selecionar um tamanho
    Então o produto não deve estar disponível para inserção no carrinho
    E a seleção de tamanho deve continuar obrigatória

  Cenário: Tentar configurar produto sem selecionar a quantidade
    Quando eu selecionar uma cor e um tamanho
    E eu não selecionar uma quantidade
    Então o produto não deve estar disponível para inserção no carrinho
    E a seleção de quantidade deve continuar obrigatória

  Cenário: Incluir até 10 unidades do produto na mesma venda
    Quando eu selecionar uma cor, um tamanho e a quantidade de 10 unidades
    Então o sistema deve permitir a configuração do produto

  Cenário: Tentar incluir 11 unidades do produto na mesma venda
    Quando eu selecionar uma cor, um tamanho e a quantidade de 11 unidades
    Então o sistema não deve permitir a configuração com 11 unidades
    E a quantidade permitida por venda deve permanecer limitada a 10 unidades

  Cenário: Retornar ao estado original ao clicar no botão "limpar"
    Dado que eu tenha selecionado uma cor, um tamanho e uma quantidade
    Quando eu clicar no botão "limpar"
    Então a seleção de cor deve retornar ao estado original
    E a seleção de tamanho deve retornar ao estado original
    E a seleção de quantidade deve retornar ao estado original
