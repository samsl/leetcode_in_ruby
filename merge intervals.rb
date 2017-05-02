def merge array
    a =  Array.new
	array.each do |interval|
		i=interval[0]
		while i<=interval[1]
			a[i] = true
			i+=1
		end
		puts a.to_s
	end
	size = a.size
	i = 0
	result = Array.new
	while  i < size
		while a[i]==nil and i<size
			i+=1
		end
		start = i 
		while a[i]==true and i<size
			i+=1
		end
		tail = i-1
		result.push([start,tail])

	end 
	result
end

puts merge([[1,3],[2,6],[8,10],[15,18]]).to_s