Dado('seleciono o departamento de {string}') do |department|
    @magazine = magazine
    @magazine.load

    @magazine.select_department(department)
  end
  
  Quando('seleciono um produto qualquer da vitrine') do
    @info = @magazine.select_any_product
  end
  
  Então('as informações da vitrine devem condizer com a da página') do
    expect(page).to have_text @info[0]
  end