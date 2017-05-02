# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
   size = nums.size
   result = Array.new
   i=0
   while i<size
   	while nums[nums[i]-1]!=nums[i]
   		nums[nums[i]-1],nums[i] = nums[i],nums[nums[i]-1]
   	end
   	i+=1
   end
   i = 0
   while i<size
   	if nums[i]!=i+1
   		result.push i+1
   	end
   	i+=1
   end
   result
end

puts find_disappeared_numbers([4,3,2,7,8,2,3,1])