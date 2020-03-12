require 'ruby-progressbar'

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
        puts "hello #{@customer} i hear you're after a pair of #{@item.name} great choice " #randomize choice of customer and item
    end

    def offer_price
        progressbar = ProgressBar.create
        puts   puts "how much do you want to offer #{@customer}"
        offer = gets.chomp
        while offer.to_i.to_s != offer
            puts "how much do you want to offer #{@customer}"
            offer = gets.chomp
        end

        puts "#{@customer} ill give you the #{@item.name} at the price $#{offer}"

        if offer.to_i >= @item.price + @price
            puts @fail
        else  
             puts @done
        end
        50.times { progressbar.increment; sleep 0.01 };

    end
    def price_check

        puts  "here are the retail price. anything above is comission!"

        puts "#{@item.name} retail value is #{@item.name}" #allow user to pick a price between -99 & +101

    end
end