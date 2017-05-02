def length_of_longest_substring(s)
	max = 0
	substring = String.new
	s.each_char  do |c|
	    if substring.include? c	    	
	       substring = substring[substring.index(c)+1..-1]
	    end
	    substring.concat(c)	    
		max = substring.size>max ? substring.size : max		
	end
    return max
end
puts length_of_longest_substring("bbbbb")
