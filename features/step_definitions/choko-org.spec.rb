Dado("que estou na página principal") do
  visit 'http://choko.org'
end

Quando("clico em getting started") do
  find('.navbar-nav .ng-scope:nth-child(1) .ng-binding').click

end

Então("as informacoes sao apresentadas de Inicio") do
  @titulo = 'Getting started'
  expect(page).to have_content @titulo

end

Quando("clico em demo") do
  find('a[class="ng-binding"][href="http://demo.choko.org"]').click
end

Então("as informacoes sao apresentadas de demo") do
  @titulodemo = 'Demo application'
  expect(page).to have_content @titulodemo

end

Quando("clico em contribute") do
  find('body > div.ng-scope.global.choko.anonymous.home > div.row-navbar.row-fluid > nav > div > div.collapse.navbar-collapse > div.panel-wrapper.navbar-left.ng-scope > ul > li:nth-child(3) > a').click
  
end

Então("as informacoes sao apresentadas de contribute") do
  @titulocontribute = 'Contribute'
  expect(page).to have_content @titulocontribute

end

Quando("clico em about") do
 find('.navbar-nav .ng-scope:nth-child(4) .ng-binding').click 

end

Então("as informacoes sao apresentadas de about") do
  @tituloabout = 'About'
  expect(page).to have_content @tituloabout

end

Quando("clico em blog") do
  find('body > div.ng-scope.global.choko.anonymous > div.row-navbar.row-fluid > nav > div > div.collapse.navbar-collapse > div.panel-wrapper.navbar-left.ng-scope > ul > li:nth-child(5) > a').click

end

Então("as informacoes sao apresentadas de blog") do
  @tituloblog = 'Blog posts'
  expect(page).to have_content @tituloblog
  
end
