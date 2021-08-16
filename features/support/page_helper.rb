Dir[File.join(File.dirname(__FILE__), "../pages/*pages.rb")].each {|file| require file}

module Pages
    def magazine
        @magazine ||= Magazine.new
    end
    def books
        @books ||= Books.new
    end
end
