Dado('tenho um produto no carrinho') do
    @magazine = magazine
    @magazine.load

    @magazine.select_department('Moda')

    @info = @magazine.select_any_product

    @magazine.cart.click
  end
  
  Quando('adiciono o mesmo produto') do
    @price = find('div', :class => 'BasketItemProduct-price')
    drop = find('#root > div > div.App.clearfix > div > div:nth-child(2) > div > div.BasketTable > div.BasketTable-items > div > div > div.BasketItemProduct-quantity')
    select(drop, :from => '2')
  end
  
  Então('o produto é multiplicado corretamente') do
    @price_expected = price.to_i * 2
    expect(page).to have_text price_expected
  end
  
  Quando('exluo o mesmo produto') do
    @magazine.btnRemove.click
  end
  
  Então('o produto deve ser removido corretamente') do
    expect(page).not_to have_text @price
  end