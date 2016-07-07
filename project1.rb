puts "Enter a string"

str=gets.chomp
str=str.unpack("C*")
puts "Enter shift factor"
shif=gets.chomp.to_i

str1=str.map do |var|
	
	if (97..122)===var

		var=(var-97-shif)%26
		var+=97
		
    elsif (65..90)===var
    	var=(var-65-shif)%26
		var+=65
    end

var
end


puts str1.pack("C*")