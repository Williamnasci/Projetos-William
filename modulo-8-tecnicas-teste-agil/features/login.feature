# language: pt
Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que eu esteja na página de login da EBAC-SHOP

  Cenário: Login com usuário e senha válidos
    Quando eu informar um usuário cadastrado e a senha correta correspondente
    Então eu devo ser direcionado para a tela de checkout

  Cenário: Login com usuário inválido
    Quando eu informar um usuário não cadastrado e uma senha
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"

  Cenário: Login com senha inválida
    Quando eu informar um usuário cadastrado e uma senha incorreta
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"
