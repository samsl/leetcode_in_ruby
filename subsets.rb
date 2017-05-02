def subsets(a)
	b = Array.new
	generate(b,a)
end
def generate(a,b)
	
	result = Array.new
	if b.size==0
		result.push []+a
		return result
	else
	   	
	   result_a= generate(a,b[1..-1])
	  
	  

	  result_b=generate(a.push(b[0]),b[1..-1])
	  a.pop
	  
      result= result_a+result_b
	
	end
	

end

nums =[1,2,3]
puts subsets(nums).to_s