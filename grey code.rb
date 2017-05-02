def gray_code num
	result = Array.new
	result.push 0
	i=0
	while i<num
		
		size = result.size
		j = size-1
		while j >=0
			puts i
			result.push (result[j]|1<<i)
			j-=1
		end
		i+=1
	end
	result
end

puts gray_code(2).to_s