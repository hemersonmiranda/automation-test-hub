class Books
    include HTTParty
    base_uri "https://fakerestapi.azurewebsites.net/api/v1/"

    def postBook(body)
        self.class.post("/Books", :body => body)
    end

    def getAll
        self.class.get('/Books')
    end

    def getBook(id)
        self.class.get("Books/#{id}")
    end
    
end

