def spiral_order(matrix)
    size = matrix.size
    total = size*size
    i,j=0,0
    count=0
    start = 0
    result = Array.new
    while count<total
	    while j<size
	    	result.push matrix[i][j]
	    	j+=1
	    	count+=1
	    end
	    puts result.to_s
	    i +=1
	    j -=1
	    while i<size
	    	puts matrix[i][j]
	    	result.push matrix[i][j]
	    	i+=1
	    	count+=1
	    end
	     puts result.to_s
	    j -=1
	    i -=1
	    while j>=start
	    	result.push matrix[i][j]
	    	j-=1
	    	count+=1
	    end
	    j+=1
	     puts result.to_s
	    start+=1
	    i-=1
	    while i>=start
	    	result.push matrix[i][j]
	    	i-=1
	    	count+=1
	    end
	    i+=1
	    j+=1
	     puts result.to_s
	    size-=1

    end
    result
end

a=[[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]

puts spiral_order(a).to_s