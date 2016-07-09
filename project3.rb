def substrings words,dictionary

wordsA=words.split(" ")
output=Hash.new(0)

		wordsA.each do |word|
			dictionary.each do |dictionary_word|
				if (word.downcase).include?dictionary_word
					output[dictionary_word]+=1
				end
			end
		end

puts output
end


dic=["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings "Howdy partner, sit down! How's it going?",dic