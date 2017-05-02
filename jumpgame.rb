def jump(nums)	
	puts nums.to_s
	size = nums.size
	if size==0 or size==1
		return 0
	else
		i = 0
		min = size-1
		while i < size-1
			if nums[i]>=size-1-i
				result = jump(nums[0..i])+1				
				puts result
                min = result if result<min 
            end
            i += 1
        end
    end
    min
end
array = [2,3,1,1,4]
puts jump(array)