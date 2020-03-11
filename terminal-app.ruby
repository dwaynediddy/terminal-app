#diddys market
require "colorize"
require "tty-table"
require_relative "./customer/customer.rb"
require_relative "./customer/item.rb"
#require_relative "./customer/list.rb" unable to require

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
    #options to go into start game , instructions: sprinkle
    
    #add instructions other wise start the game

puts "ok, remember to try make as much money as you can without losing the customer! (press ... to continue)"

#want to have player press a key to continue: sprinkle





list = [{
    name: 'converse',
    price: 100
    },
    {
    name: "jordans",
    price: 150
    },
    {
    name: "timberlands",
    price: 200
    }]
     #also want a unique price for each item
 

item1 = Item.new(list[rand(0...list.length)])
item1.start_sale

#customer_list = ["Big Poppa", "Swaggy P", "Jezenizzle fo shizzle"]
#turn this into a hash similar to the items/price?
customer_list = [{

    customer: "Big Poppa",
    price: 40,
    done: "for sure ill take that!",
    fail: "you think im made of money?! no way"

    }, 
    {
    customer: "Swaggy P",
    price: 70,
    done: "helluva deal ill take those!",
    fail: "you must be outside your mind!"
    # if offer price =+70 == true
    #      puts "yeah gimme those kicks"
    #  else puts "no chance chump"
    #  end

    },
    {
    customer: "Jezenizzle fo shizzle",
    price: 90,
    done: "yeah ill take those i got that full-stack dev money",
    fail: "you think i fell off the turnip truck yesterday!"
    }
    #offer: #base price =+90 == true puts "yeah ill take those i got that full-stack dev money" 
    #else puts "you think i fell off the turnip truck yesterday!"

]


customer1 = Customer.new(customer_list[rand(0...list.length)], item1)
# customer1.greet_customer
# puts list
# puts customer_list


item1.price_check

#show user base prices. 

  #after base price how much would user want to charge
  #from -99 to +101 will gets then charge NPC will accept or declice based on there price acceptance

        #character attributes 1 price equal or over up until 25
        #character attributes 1 price equal or over up until 50
        #character attributes 1 price equal or over up unyil 90...

# client = Client.new(customer_list, list)   
customer1.offer_price

# negotiations_with_customers