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

