require 'send_sms'
class Takeaway

  # Place the order by giving the list of dishes, their quantities and a number that should be the exact total

def introduction
 puts  "Please pick your order from the list below: \n"
end

def launch
introduction
puts
menu_options
user_order_request

end

def menu_options
@menu_list = {"spring roll"=>0.99, "char sui bun"=>3.99, "pork dumpling"=>2.99, "peking duck"=>7.99, "fu-king fried rice"=>5.99}

 @menu_list.each { |k,v| puts "#{k}: £#{v}\n" }
end


def order
 # tally of order
 # edit order
 # excute order
end


def user_order_request
# stores order
@order = []
    while true
      puts "Item:"
      @item = gets.chomp
      break if @item == "place order"
      puts "Qty?"
      @qty = gets.chomp
      @order << [@item, @qty]
     end
end



# calculates price and quantity


def conclusion
send_sms
puts "your order is on its way #{Time.new}"
end


end
