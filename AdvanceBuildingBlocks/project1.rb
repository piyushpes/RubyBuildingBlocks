def bubble_sort arr

j=(arr.size)-1

while j>=0
	i=0
	
		while i<j
		if(arr[i]>arr[i+1])
		arr[i],arr[i+1]=arr[i+1],arr[i]
		end

		i+=1
	
		end

	j-=1

end
arr
end


def bubble_sort_by arr
j=(arr.size)-1

while j>=0
	i=0
	
		while i<j
		if( yield(arr[i],arr[i+1]) >0)
		arr[i],arr[i+1]=arr[i+1],arr[i]
		end

		i+=1
	
		end

	j-=1

end
arr


end


puts bubble_sort ["a","c","b"]

a= bubble_sort_by(["hi","hello","hey"]) do |left,right|
       left.length - right.length
     end

puts a