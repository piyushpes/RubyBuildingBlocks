def caesar_cipher str,shif
	
	str=str.unpack("C*")
	
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
end

puts "Enter a string"
text=gets.chomp

puts "Enter shift factor"
offset=gets.chomp.to_i

caesar_cipher text,offset