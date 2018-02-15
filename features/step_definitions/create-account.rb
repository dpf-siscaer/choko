
Quando("clico em Create an account") do
  find('body > div.ng-scope.global.choko.anonymous > div.row-navbar.row-fluid > nav > div > div.collapse.navbar-collapse > div.panel-wrapper.navbar-right.ng-scope > a.btn.btn-primary.navbar-btn.ng-scope').click
   
end

Então("as informacoes sao apresentadas criacao de conta") do
  @titulocreateaccount = 'Create an account'
  expect(page).to have_content @titulocreateaccount

end

Quando("nao preencho os campos") do
  find('body > div.ng-scope.global.choko.anonymous > div.row-navbar.row-fluid > nav > div > div.collapse.navbar-collapse > div.panel-wrapper.navbar-right.ng-scope > a.btn.btn-primary.navbar-btn.ng-scope').click
  find('#element-create-account-submit').click
  
end

Então("o sistema apresenta mensagem de erro de campo obrigatorio") do
  @msgerrocamposobrigatorios = 'Please provide an username.'
  expect(page).to have_content @msgerrocamposobrigatorios
  
end

Quando("preencho os campos de senha com valores diferentes") do
  find('body > div.ng-scope.global.choko.anonymous > div.row-navbar.row-fluid > nav > div > div.collapse.navbar-collapse > div.panel-wrapper.navbar-right.ng-scope > a.btn.btn-primary.navbar-btn.ng-scope').click
  @email = 'cunhaemilio@gmail.com'
  find('#element-create-account-email').set @email
  @username = 'eccunha1'
  find('#element-create-account-username').set @username
  @pass1 = '123'
  find('#element-create-account-password').set @pass1
  @pass2 = '321'
  find('#element-create-account-password-confirm').set @pass2
  find('#element-create-account-submit').click
  

end

Então("o sistema apresenta mensagem de erro de valores diferentes") do
  @msgerrovaloresdiferentes = 'Passwords must match.'
  expect(page).to have_content @msgerrovaloresdiferentes
  
end