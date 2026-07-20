# language: pt
Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que eu esteja na tela de cadastro do checkout

  Cenário: Identificar os campos obrigatórios do cadastro
    Então todos os campos obrigatórios devem estar marcados com asterisco

  Esquema do Cenário: Concluir cadastro conforme o preenchimento dos dados obrigatórios e do e-mail
    Dado que os dados obrigatórios do cadastro estejam "<situacao_dados>"
    E o e-mail informado seja "<email>"
    Quando eu confirmar o cadastro
    Então o sistema deve "<resultado>"

    Exemplos:
      | situacao_dados | email                | resultado                                              |
      | preenchidos    | cliente@ebacshop.com | concluir o cadastro com sucesso                        |
      | preenchidos    | cliente@             | exibir uma mensagem de erro sobre o formato do e-mail  |
      | vazios         | (vazio)              | exibir uma mensagem de alerta                          |
