class Customer
    attr_reader :customer
    def initialize(customer, item)
        @customer = customer[:customer]
        @item = item
        @price = customer[:price]
        @done = customer[:done]
        @fail = customer[:fail]
    end
    def greet_customer
        puts ""
        puts "hello #{@customer} i hear you're after a pair of #{@item.name} great choice " #randomize choice of customer and item
        puts ""
    end

    def offer_price
        puts ""
        puts   puts "how much do you want to offer #{@customer}"
        offer = gets.chomp
        while offer.to_i.to_s != offer
            puts ""
            puts "how much do you want to offer #{@customer}"
            offer = gets.chomp
        end
        puts ""
        puts "#{@customer} ill give you the #{@item.name} at the price $#{offer}"
        puts ""
        if offer.to_i >= @item.price + @price
            puts @fail
        else  
             puts @done
         end
    end
    def price_check
        puts ""
        puts  "here are the retail price. anything above is comission!"
        puts ""
        puts "#{@item.name} retail value is #{@item.name}" #allow user to pick a price between -99 & +101
        puts ""
    end
end