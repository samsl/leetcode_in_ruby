def first_missing_positive(nums)
   size = nums.size
   i = 0
   while i<size
      while nums.at(i)>0 and nums.at(i)<=size and nums.at(nums.at(i)-1)!=nums.at(i)
      	 j = nums.at(i)-1
         nums[i], nums[j] = nums[j], nums[i]
      end
       i+=1   	
   end 
   i = 0
   while i<size
   	  if nums.at(i)!=i+1
   	  	return i+1
   	  end
   	  i+=1
   end
   return size+1
end
a =[3,4,-1,1]

puts first_missing_positive(a)