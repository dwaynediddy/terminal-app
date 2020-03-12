#diddys market
require "colorize"
require_relative "./customer/customer.rb"
require_relative "./customer/item.rb"
require_relative "./customer/list.rb" 
require_relative "./customer/customer_list.rb" 

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
puts ""
puts "enter your name: "
    name = gets.chomp
    puts ""
    puts "Your shift is about to start #{name}!"     
    puts ""
#want to have player press a key to continue: sprinkle
# message = "ok, remember to try make as much money as you can without losing the customer! (press ... to continue)"    #Can be anything you want to display
# def pause(message)
#     puts message
#     pausing = true
#     while pausing == true
#         if gets
#             pausing = false
#         end
#     end
#     system "clear"
# end

5.times{
    item1 = Item.new(list[rand(0...list.length)])
item1.start_sale

customer1 = Customer.new(customer_list[rand(0...list.length)], item1)

item1.price_check
 
customer1.offer_price
}
