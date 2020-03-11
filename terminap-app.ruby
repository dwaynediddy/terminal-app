#diddys market
require "colorize"
require "tty-table"

puts"
/$$$$$$$  /$$       /$$       /$$                                     /$$                          
| $$__  $$|__/      | $$      | $$                                    | $$                          
| $$  \ $$ /$$  /$$$$$$$  /$$$$$$$ /$$   /$$  /$$$$$$$        /$$$$$$$| $$$$$$$   /$$$$$$   /$$$$$$ 
| $$  | $$| $$ /$$__  $$ /$$__  $$| $$  | $$ /$$_____/       /$$_____/| $$__  $$ /$$__  $$ /$$__  $$
| $$  | $$| $$| $$  | $$| $$  | $$| $$  | $$|  $$$$$$       |  $$$$$$ | $$  \ $$| $$   \ $$| $$   \ $$
| $$  | $$| $$| $$  | $$| $$  | $$| $$  | $$ \____  $$       \____   $$| $$  | $$| $$  | $$| $$  | $$
| $$$$$$$/| $$|  $$$$$$$|  $$$$$$$|  $$$$$$$ /$$$$$$$/       /$$$$$$$/| $$  | $$|  $$$$$$/| $$$$$$$/
|_______/ |__/ \_______/ \_______/ \____  $$|_______/        |_______/ |__/  |__/ \______/ | $$____/ 
                                   /$$  | $$                                              | $$      
                                  |  $$$$$$/                                              | $$      
                                   \______/                                               |__/ 
".colorize(:green)


puts "Time to get to work! grab your name tag"
puts "enter your name: "
    name = gets.chomp
    system("clear")
    puts "Your shift is about to start #{name}!"     
    # table = TTY::Table.new ['header1','header2'], [['a1', 'a2'], ['b1', 'b2']]
    # table.render(:ascii)
    
    #1 option for instructions
    #another option for "start game"
    #will need to write a menu
    #options to go into start game , instructions
    
    #add instructions other wise start the game

puts "ok, remember to try make as much money as you can without losing the customer! (press ... to continue)"

#want to have player press a key to continue

class Customer
    def initialize(customer1)
        @customer = customer1
    end
    def greet_customer(item)
        puts "hello #{@customer} i hear you're after a pair of #{item} great choice " #randomize choice of customer and item
    end
end

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
        puts  "here are the retail prices. anything above is comission!"
        puts "#{@name} retail value is #{@price}"
    end
end

# class Price #each item needs to be assigned a base price which can be "negotiated" by the user
#     attr_reader :cost
#     def initialize(price)
#         @cost = price
#     end
# end

list = [{
    name: 'converse',
    price: "$100"
    },
        {
    name: "jordans",
    price: "$150"
        },
        {
    name: "timberlands",
    price: "$200"
    }]
     #also want a unique price for each item
 

item1 = Item.new(list[rand(0...list.length)])
item1.start_sale

customer_list = ["Big Poppa", "Swaggy P", "Jezenizzle fo shizzle"]

customer1 = Customer.new(customer_list[rand(0...list.length)])
customer1.greet_customer(item1.name)

# price = Price .new(list[0])
item1.price_check

#fsdgfdhsjdshgskh
#show user base prices. sprinkle put it in a table if possible

  

        #character attributes 1 price equal or over up until 25
        #character attributes 1 price equal or over up until 50
        #character attributes 1 price equal or over up unyil 90..

        