class Item 
    attr_reader :name, :price
    def initialize(item)
        @name = item[:name]
        @price = item[:price]
    end
    def start_sale
        puts "a customer walks in, They want some #{@name}" 
    end
    def price_check
        puts  "here are the retail price. anything above is comission!"
        puts "#{@name} retail value is #{@price}" #allow user to pick a price between -99 & +101
        #if non numeric value is entered run error and ask again
    end
end