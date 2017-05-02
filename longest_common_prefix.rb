def longest_common_prefix(strs)
    str_size = strs[0].size
    array_size = strs.size
    prefix = ""
    i = 0
   
    while i<str_size	
    	j=1
        while j<array_size
        	if i>=strs[j].size or strs[j][i] !=strs[0][i]
        		return prefix
        	else
        		j+=1
        	end
        end
        prefix = strs[0][0..i]
        i +=1
    end
 	return prefix
 end

 puts longest_common_prefix(["aaaa","aab","aa"])