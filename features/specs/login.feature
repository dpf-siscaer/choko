#language: pt

Funcionalidade: Login
SENDO UM USUARIO
EU QUERO
PARA

@ca
Cenario: Campos obrigatorios
Dado que eu estou na pagina principal
Quando eu nao informo o login e a senha
Entao uma mensagem de erro de campo obrigatorio e apresentada

Cenario: Senha obrigatoria
Dado que eu estou na pagina principal
Quando eu nao informo a senha
Entao uma mensagem de erro de senha e apresentada

Cenario: Logar com email e telefone
Dado que eu estou na pagina principal
Quando eu nao informo o email e o telefone
Entao uma mensagem de erro de email e telefone e apresentada

Cenario: Usuario incorreto
Dado que eu estou na pagina principal
Quando eu nao informo o usuario incorreto
Entao uma mensagem de erro de usuario incorreto e apresentada

