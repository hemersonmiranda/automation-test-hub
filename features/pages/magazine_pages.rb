class Magazine < SitePrism::Page
    set_url 'https://www.magazineluiza.com.br'

    element :cart, 'body > div.wrapper__main > div.wrapper__content.js-wrapper-content > div.wrapper__control > div.wrapper-product__content.wrapper-product__box-prime > div.wrapper-product__informations.js-block-product > button > span'
    element :btnRemove, '//*[@id="root"]/div/div[2]/div/div[2]/div/div[2]/div[2]/div/div/div[2]/button/span'
    def select_department(department)
        all_departments = find('span', :text => 'Todos os departamentos')
        all_departments.click

        category = find('a', :text => department)
        page.execute_script('arguments[0].scrollIntoView();', category)
        category.click
    end

    def select_any_product
        product = find("a[name='linkToProduct']", :match => :first)
        info_product = product.text
        @list_info = info_product.split(" ")
        page.execute_script('arguments[0].scrollIntoView();', product)
        product.click
        puts @list_info.class
        return @list_info
    end

    def insert_zipcode(zipcode)
        class_zipcode = find(:xpath, '/html/body/div[3]/div[5]/div[1]/div[3]/div[2]/div[7]/div[1]/div/input')
        page.execute_script('arguments[0].scrollIntoView();', class_zipcode)
        class_zipcode.find('input').send_keys(zipcode)
        class_zipcode.find('button').click
    end

end
