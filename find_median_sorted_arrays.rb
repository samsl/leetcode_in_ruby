def find_median_sorted_arrays(nums1,nums2)
	size1 = nums1.size
	size2 = nums2.size
	totol_size = size1+size2
	if totol_size%2 == 0 and totol_size>0
		target1 = totol_size/2
		target2 = totol_size/2+1 
		find(nums1,nums2,target1,target2)
	else
		target = (totol_size+1)/2	
		find(nums1,nums2,target)
	end	
end

def find(nums1,nums2,target1, target2=-1)
	size1 = nums1.size
	size2 = nums2.size
	puts nums1.to_s
	puts nums2.to_s
	
	return nil  if size1==0 and size2==0
	if size1==0
		a = nums2[target1-1]
		if target2!=-1
			b = nums2[target1] 
		else b=a	
        end
        return (a+b).to_f/2
    elsif size2==0
       a = nums1[target1-1]
		if target2!=-1
			b = nums1[target1] 
		else b=a	
        end
        return (a+b).to_f/2
    end     
	if target1==1 
		if nums1[0] < nums2[0]
			a= nums1[0]
			if target2!=-1
				b = (size1>1 and nums1[1] < nums2[0]) ? nums1[1] : nums2[0]
			else b=a
			end
		elsif  nums1[0] >= nums2[0] 
		   	a= nums2[0]
		   	if target2!=-1
				b = (size2<=1 or nums1[0] < nums2[1]) ? nums1[0] : nums2[1]
			else b=a
			end
		end	
		return (a+b).to_f/2
	else
		if size1==1 
			mid1 = 0
		else mid1 = (size1-1)/2
		end	
		if size2==1
			mid2 = 0
		else mid2 = (size2-1)/2
		end	
	end	
	
	if nums1[mid1]<nums2[mid2]
		nums1=nums1[mid1+1..-1]
		nums2=nums2[0..mid2]
        
		target1 = target1 - mid1-1
        target2 = target2 - mid1-1 if target2!=-1
        find(nums1,nums2,target1, target2)
     else 
        nums1 = nums1[0..mid1]
        nums2 = nums2[mid2+1..-1]
        target1 = target1 - mid2-1 
        target2 = target2 - mid2-1 if target2!=-1
        find(nums1,nums2,target1, target2)
    end    
end
nums2=[11,13]
nums1=[2,4,8,10]
puts find_median_sorted_arrays(nums1,nums2)
