def max_area(height)
	size = height.size
	i = 0
	j = size-1
	max = 0
	while i<=j
		if height[i]>height[j]
			min = height[j]
		else
			min = height[i]
		end
		area = min*(j-i)
		max = area if area>max
		if height[i] < height[j]
			i += 1
		else 
		    j -=1
		 end
	end
	puts max    
end

height=[1,2,4,3]
max_area(height)