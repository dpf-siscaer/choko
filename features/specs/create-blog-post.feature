#language: pt

Funcionalidade: Blog
    Para que eu possa administrar o blog
    Sendo um usuário
    Posso criar um blog

    Contexto: Tela Principal
        Dado que estou na página principal

    
    Cenario: Criar um formulário de postagem no blog a partir do botão Adicionar blog

        Quando clico em blog 
        E adicionar blog
        Então as informacoes sao apresentadas da criacao do blog

    Cenario: Tentar criar uma postagem no blog sem preencher qualquer campo

        Quando clico em blog
        E nao preencho os campos do blog
        Então uma mensagem de erro e apresentada do blog