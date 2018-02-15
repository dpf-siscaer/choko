#language: pt

Funcionalidade: Sign in
    Para que eu possa administrar o login
    Sendo um usuário
    Posso navegar validar o formulario

    Contexto: Tela Principal
        Dado que estou na página principal

    Cenario: Navegar ate sign in

        Quando clico em sign in
        Então as informacoes sao apresentadas sign in
    
    Cenario: Tentar fazer o login sem preencher o usuario e a senha

        Quando nao preencho as informacoes de usuario e senha
        Então o sistema nao permite a operacao e apresenta erro

    Cenario: Tentar fazer login com usuário e senha invalido

        Quando preencho as informacoes com valores errados
        Então o sistema nao permite a operacao e apresenta mensagem com erro