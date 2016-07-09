

def stock_picker stock_price

buy_index = stock_price[0..-2].index(stock_price[0..-2].min)

sell_index= (stock_price[(buy_index+1)..-1].index(stock_price[(buy_index+1)..-1].max)) +buy_index +1

if (stock_price[buy_index]<stock_price[sell_index]) and buy_index<sell_index 


puts "Buy Index "+buy_index.to_s
puts "sell Index "+sell_index.to_s

else  
puts "Sorry! Not a good time to buy stocks."
end


end

stock_picker ([17,3,6,9,15,8,6,1,10,1])