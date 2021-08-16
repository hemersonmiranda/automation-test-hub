Dado('tenho o endereço da api') do
    @books = books
  end
  
  Quando('faço a requisição de consultar todos os livros') do
    $response = @books.getAll
  end
  
  Então('a API retorna todos os livros com o status code {int}') do |status_code|
    expect($response.code).to eq(status_code)
  end

  Dado('o body de requisição') do
    body = {
        "id": 1,
        "title": "Harry Potter",
        "description": "Melhor Filme",
        "pageCount": 0,
        "excerpt": "Melhor filme"
      }
      @body = JSON.generate(body)
  end
  
  Quando('faço a requisição de cadastrar um novo livri') do
    $response = @books.postBook(@body)
  end
  
  Então('o livro é cadastrado corretamente e retorna o status code {int}') do |status_code|
    expect($response.code).to eq(status_code)
    expect($response.message).to eq(@body)
  end

  Quando('faço a requisição de consultar livro por id') do
    $response = @books.getBook("1")
  end