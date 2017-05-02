def trap(height)
   size = height.size
   water = 0
  
   i,j = 0
   while i<size
     if height[i]>0
     	flag = height[i]
        j=i+1
        stack = Array.new
     	while j<size and height[j]<flag
        	stack.push height[j]
        	j+=1
    	end
    	if j<size  
    	   while stack.size>0	
           		top = stack.pop
           		water += flag-top
           end           
           i = j
       else
       	   i +=1
       	end
      else
       	i +=1
      end
  end
  water
end
height=[0,1,0,2,1,0,1,3,2,1,2,1]
puts trap(height)


      