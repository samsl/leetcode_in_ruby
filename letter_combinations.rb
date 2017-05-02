def letter_combinations(digits)
	size = digits.size
	if size == 1
		return n_to_letter digits[0]
	else
		return n_to_letter digits[0],letter_combinations(digits[1..-1])

    end
end
def n_to_letter n,array=[]
	
	a=Array.new
	case n	
	when "1"
	    a=[]	
	when "2"
        a = ['a','b','c']
    when "3"
    	a = ['d','e','f']
    when "4"
    	a =['g','h','i']
    when "5"
    	a = ["j","k","l"]
    when "6"
    	a =['m','n','o']
    when "7"
    	a =['p','q','r','s']
    when "8"
    	a = ['t','u','v']
    when "9"
    	a =['w','x','y','z']
    end
    return combination a,array
    
end 
def combination a,b

	return b if a.size==0 
    return a if b.size==0
	result = Array.new
	a.each do |i|
		array = Array.new
   		b.each do |j|
   			array.push i+j
   		end   
   	    result += array 
	end
    return result
end
test = "156175"
puts letter_combinations(test)
