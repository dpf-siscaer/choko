#language: pt

Funcionalidade: Criar Conta
    Para que eu possa administrar o site
    Sendo um usuário
    Posso criar uma conta

    Contexto: Tela Principal
        Dado que estou na página principal

    
    Cenario: Navegar para criar uma conta

        Quando clico em Create an account
        Então as informacoes sao apresentadas criacao de conta

    Cenario: Tentar criar uma conta sem preencher qualquer campo

        Quando nao preencho os campos
        Então o sistema apresenta mensagem de erro de campo obrigatorio

    Cenario: A senha deve corresponder

        Quando preencho os campos de senha com valores diferentes
        Então o sistema apresenta mensagem de erro de valores diferentes