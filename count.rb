def count_and_say(n)
   return "" if n==0
   if n==1
   	 return "1"
   else 
   	s = count_and_say(n-1)
    size = s.size
    i = 0
    say=""
    while i<size    	
        count = 1
        j = i+1
    	while j<size and s[j] ==s[i]
    		count+=1
    		j+=1
        end
        say+=count.to_s+s[i]
        i=j
        
    end
    return say
    end 
end
for i in 1..6
  puts count_and_say(i)
end