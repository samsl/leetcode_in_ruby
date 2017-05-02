def convert(s, num_rows)
	size = s.size
	i=0
	hash = Hash.new
	j=0
	while j<num_rows
		hash[j] = String.new
		j+=1
	end	
    while i<size
    	j = 0
    	while i<size and j<num_rows
    		hash[j].concat s[i]
    		j += 1
    		i += 1
    	end
    	j =0
    	while i<size and j<num_rows-2
    		hash[num_rows-2-j].concat s[i]
    		j += 1
    		i += 1
    	end	
    end
    j=0
    result = String.new
	while j<num_rows
		result = result.concat(hash[j])
		j+=1
	end
	puts result
end
s = "PAYPALISHIRING"
convert(s,3)