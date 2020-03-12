#diddys market
require "colorize"
require_relative "./customer/customer.rb"
require_relative "./customer/item.rb"
require_relative "./customer/list.rb" #unable to require
#require_relative "./customer/customer_list.rb" #unable to require

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

#want to have player press a key to continue: sprinkle
message = "ok, remember to try make as much money as you can without losing the customer! (press ... to continue)"    #Can be anything you want to display
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

item1 = Item.new(list[rand(0...list.length)])
item1.start_sale

# customer_list = [{

#     customer: "Big Poppa",
#     price: 40,
#     done: "for sure ill take that!",
#     fail: "you think im made of money?! no way"

#     }, 
#     {
#     customer: "Swaggy P",
#     price: 70,
#     done: "helluva deal ill take those!",
#     fail: "you must be outside your mind!"

#     },
#     {
#     customer: "Jezenizzle fo shizzle",
#     price: 90,
#     done: "yeah ill take those i got that full-stack dev money",
#     fail: "you think i fell off the turnip truck yesterday!"
#     }
# ]

customer1 = Customer.new(customer_list[rand(0...list.length)], item1)

item1.price_check
 
customer1.offer_price

