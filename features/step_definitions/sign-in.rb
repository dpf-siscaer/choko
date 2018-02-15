Quando("clico em sign in") do
    find('.btn-link').click
  end
  
  Então("as informacoes sao apresentadas sign in") do
    @titulosignin = 'Sign in'
    expect(page).to have_content @titulosignin
  end
  
  Quando("nao preencho as informacoes de usuario e senha") do
    find('.btn-link').click
    find('#element-sign-in-submit').click
  end
  
  Então("o sistema nao permite a operacao e apresenta erro") do
    @msgerrosignin = 'Please provide an username and a password.'
    expect(page).to have_content @msgerrosignin
  end
  
  Quando("preencho as informacoes com valores errados") do
    find('.btn-link').click
    @user = 'eccunha1'
    @pass = '123'
    find('#element-sign-in-username').set @user
    find('#element-sign-in-password').set @pass
    find('#element-sign-in-submit').click
  end
  
  Então("o sistema nao permite a operacao e apresenta mensagem com erro") do
    @msgerrosignin2 = 'Invalid username or password.'
    expect(page).to have_content @msgerrosignin2

  end