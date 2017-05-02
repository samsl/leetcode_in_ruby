# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
   size1 = s.size
   size2 = p.size
   i = 0
   result = Array.new
   h= Hash.new
   while i<size2
      if h[p[i]].nil?
      	h[p[i]] = 1
      else
      	h[p[i]]+=1
      end
      i+=1				
   end
   i= 0
   puts h

=begin
   while i<size1-size2+1
   	  temp = Hash.new
   	  j=0
      while j<size2      	
      	if temp[s[i+j]].nil?
      		temp[s[i+j]] = 1
        else
      		temp[s[i+j]]+=1
        end
        j+=1
      end
      puts temp
      if temp==h 
      	result.push i
      end
      i+=1	
   end
=end
   left = 0
   right = 0
   count = size2
   while right<size1
   		if !h[s[right]].nil? and h[s[right]]>=1
   			h[s[right]]-=1
   			count-=1

   		end
   		if count==0
   			result.push left
   		end
   		right+=1
   		if right-left==size2
   		 if !h[s[left]].nil?
   		 	count+=1
   		 	h[s[left]]+=1
   		 end	
   			left+=1
   	        
   	    end		
   end   
   result 
end

p="abab"
s="ab"

puts find_anagrams(p,s).to_s
