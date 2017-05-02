def remove_duplicates(nums)
	size = nums.size
	i = 1
	while i<size
		if nums[nums[i]-nums[0]]!=nums[i]
			nums[i],nums[nums[i]-nums[0]] = nums[nums[i]-nums[0]],nums[i]
		end
		i +=1
	end 
	last = nums[0]
	length =1
	i = 1
	while i<size and nums[i]>last
		length +=1
		last = nums[i]
		i +=1
	end
		length 
end