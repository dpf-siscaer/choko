Quando("adicionar blog") do
    find('body > div.ng-scope.global.choko.anonymous.blog > div.row-content.row-fluid > div > div.column-content.col-md-8 > div > div > div.panel-wrapper.ng-scope > div > div.page-header.ng-scope > h1 > div > div > button').click

  end
  
  Então("as informacoes sao apresentadas da criacao do blog") do
     @tituloaddblog = 'Create a blog post'
     expect(page).to have_content @tituloaddblog
  end
  
  Quando("nao preencho os campos do blog") do
    find('body > div.ng-scope.global.choko.anonymous.blog > div.row-content.row-fluid > div > div.column-content.col-md-8 > div > div > div.panel-wrapper.ng-scope > div > div.page-header.ng-scope > h1 > div > div > button').click
    find('#element-type-blog-submit').click
  end

  Então("uma mensagem de erro e apresentada do blog") do
    @msgerroblog = 'Forbidden'
    expect(page).to have_content @msgerroblog
  end