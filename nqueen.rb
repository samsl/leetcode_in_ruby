# @param {Integer} n
# @return {String[][]}
def solve_n_queens(n)
   result = Array.new(n){'.'*n}
  
   available = Array.new(n){Array.new(n){1}}
 
   return set_queen(result,0,available)
end
def set_queen(result,n,available)
	l = result.size
	result_set = Array.new
	
	if n==l		
		return result_set.push result
    else
		i = 0
		while i<l
		   
		   puts available.to_s
		  if available[n][i]==1
		  	result_try = result.map(&:dup)
		  	available_try =available.map(&:dup)
		  	result_try[n][i]='Q'
		  	puts result.to_s
		  	puts result_try.to_s
		  	available_try[n].collect!{|a|a=0}
		  	available_try.each{|a| a[i]=0}

		  	s,t=n+1,i+1
	        while s<l and t<l
	            available_try[s][t]=0
	            s+=1
	            t+=1
	        end
	            s,t=n+1,i-1
	        while s<l and t>=0
	            available_try[s][t] =0
	            s +=1
	            t -=1
	        end
	        puts available.to_s
	       
	        puts "$$$$$$$$$$$$$$$"

	        return_result = set_queen(result_try,n+1,available_try)
	        if return_result.size>0
	        	result_set+=return_result
            end
	       end
	       i+=1  
	     end
	     return result_set
	


	end
end

puts solve_n_queens(4).to_s

