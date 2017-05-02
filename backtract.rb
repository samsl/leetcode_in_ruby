def backtract num
	generate("",0,num)
end
def generate(s,m,n)
	result = Array.new
	if n==0
		 s = s+")"*m
		 result.push s
		 return result
	end
	result+= generate(s+"(",m+1,n-1)
	if m>0
		result+=  generate(s+")",m-1,n)
    end
    return result
end

puts backtract(3).to_s