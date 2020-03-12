#diddys market
require "colorize"
require_relative "./customer/customer.rb"
require_relative "./customer/item.rb"
#require_relative "./customer/list.rb" unable to require
#require_relative "./customer/customer_list.rb" unable to require

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
    
    puts "Your shift is about to start #{name}!"     
    
    
    #add instructions other wise start the game

puts "ok, remember to try make as much money as you can without losing the customer! (press ... to continue)"

#want to have player press a key to continue: sprinkle
message = "Press enter to continue"    #Can be anything you want to display
def pause(message)
    puts message
    pausing = true
    while pausing == true
        if gets
            pausing = false
        end
    end
    system "clear"
end




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
]


customer1 = Customer.new(customer_list[rand(0...list.length)], item1)
# customer1.greet_customer
# puts list
# puts customer_list


item1.price_check



# client = Client.new(customer_list, list)   
customer1.offer_price

# negotiations_with_customers