# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
   max = 0
   count =0
   nums.each do |a|
   		if a==1
   			count+=1
   			if count>max
   				max = count
   			end
   		end
   		if a ==0
   			count =0
   		end
   end 
   max
end

puts find_max_consecutive_ones([1,1,0,1,1,1])