def two_sum(nums,target)
	hash = Hash.new
	size = nums.size

	for i in (0..size-1)	  
	   hash[nums[i]]=Array.new if hash[nums[i]].nil?
       hash[nums[i]].push i
	end
	indices = Array.new
	nums.each do |a|
			if !hash[target-a].nil? and hash[target-a].size>0			
                indices.push hash[a].product(hash[target-a])
                hash[a]=nil
                hash[target-a]=nil
            end
  

	end
	return indices	
end	
nums=[0,2,2,7,9,11,12]
puts two_sum(nums,9)