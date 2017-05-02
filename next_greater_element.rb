# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
   stack = Array.new
   map = Hash.new
   result = Array.new
   nums.each {|a|
   	while stack[-1]!=nil and stack[-1]<a
   		map[stack[-1]] = a
   		stack.pop
   	end
   	stack.push a
   }
   find_nums.each do |a|
   		if map[a].nil?
   			result.push -1
   		else
   			result.push map[a]
   		end
   end 
   result
end

puts next_greater_element([4,1,2],[1,3,4,2])