def longest_palindrome(s)
	size = s.size
	max = 1
	palindrome=String.new	
	palindrome.concat(s[0])
	for i in (1..size-1)
     h = i-1
     t = i+1
     total=1
     
     while h>=0 and t<size and s[h]==s[t]     	
     	total+=2
     	if total>max
     		max = total
     		palindrome = s[h..t]
               
     	end     
     	h-=1
     	t+=1         
     end
     h = i-1
     t = i+1
     if s[i]==s[h]     	
     	total=2
     	if total>max
     			max = total
     			palindrome = s[h..i]
                   
     	end
     	h -= 1
     	
     	while h>=0 and t<size and s[h]==s[t]     	
     		total+=2
     		if total>max
     			max = total
     			palindrome = s[h..t]
     		end     
     		h-=1
     		t+=1         
     	end 
     end 
    end
    palindrome
end
s1="ababd"
s2="bbbb"
puts longest_palindrome(s1)
puts longest_palindrome(s2)