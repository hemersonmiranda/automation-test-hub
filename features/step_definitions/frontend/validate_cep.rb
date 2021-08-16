Dado('seleciono um produto da vitrine') do
    @magazine = magazine
    @magazine.load

    @magazine.select_department('Moda')

    @info = @magazine.select_any_product
  end
  
  Quando('insiro o CEP {string}') do |number_zipcode|
    sleep 10
    @magazine.insert_zipcode(number_zipcode)
  end
  
  Quando('adiciono no carrinho') do
    @magazine.cart.click
  end
  
  Então('o CEP informado anteriormente deve ser o mesmo') do
    expect(page).to have_text @number_zipcode
  end

  Então('ele deve ser validado corretamente') do
    expect(page).to have_text @number_zipcode
  end
  