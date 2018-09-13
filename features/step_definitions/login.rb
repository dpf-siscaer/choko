Dado("que eu estou na pagina principal") do
    visit 'http://www.ubook.com/login/index/target/default'
  end
  
  Quando("eu nao informo o login e a senha") do
    find(:css,'input.btn').click
  end
  
  Entao("uma mensagem de erro de campo obrigatorio e apresentada") do
    expect(page).to have_content "Login não pode ser vazio."
    expect(page).to have_content "Senha não pode ser vazio"
  end
  
  Quando("eu nao informo a senha") do
    find('#CustomerLoginForm_username').set "a"
    find(:css,'input.btn').click
  end
  
  Entao("uma mensagem de erro de senha e apresentada") do
    expect(page).to have_content "Senha não pode ser vazio"
  end
  
  Quando("eu nao informo o email e o telefone") do
    find('#CustomerLoginForm_username').set "a"
    find('#CustomerLoginForm_password').set "a"
    find(:css,'input.btn').click
  end
  
  Entao("uma mensagem de erro de email e telefone e apresentada") do
    expect(page).to have_content "Para se logar utilize seu e-mail ou seu telefone."
  end
  
  Quando("eu nao informo o usuario incorreto") do
    find('#CustomerLoginForm_username').set "cunhaemilio@gmail.com"
    find('#CustomerLoginForm_password').set "a"
    find(:css,'input.btn').click
  end
  
  Entao("uma mensagem de erro de usuario incorreto e apresentada") do
    expect(page).to have_content "Usuário ou senha incorreto."
  end
