Dado('eu acesse o site da Magazine Luiza') do
    @magazine = magazine
    @magazine.load
  end
  
  Quando('selecionar o departamento {string}') do |department|
    @magazine.select_department(department)
  end

  Quando('seleciona um produto qualquer') do
    @magazine.select_any_product
  end
  
  Então('deverá carregar todas os produtos de moda corretamente') do
    expect(page).to have_text 'Moda'
  end