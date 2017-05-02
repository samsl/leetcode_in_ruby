def search(nums,target)
	size =nums.size
 	i = 1
 	last = nums[0]
 	while i<size and last<nums[i]
 		last = nums[i]
 		i+=1
 	end
 	if target>nums[size-1]
 		binarySearch(nums,target,0,i-1)
 	else
 		binarySearch(nums,target,i,size-1)
 	end
end
def binarySearch(nums,target,m,n)
	if m==n or n<m
		return -1 if target!=nums[m]
	if target==nums[(m+n)/2]
		return (m+n)/2
	elsif target>nums[(m+n)/2]
		return binarySearch(nums, target,(m+n)/2+1,n)
	else 
		return binarySearch(nums, target,m,(m+n)/2-1)
end