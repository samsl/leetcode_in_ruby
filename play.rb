def reverse_string src, head,tail  
  i= head
  j= tail
  while i<=j do
  	t = src[i]
  	src[i] = src[j]
  	src[j] = t
  	i+=1
  	j-=1
  end 
  src	
end

def reverse_sentence src
  length=src.size
  i= 0
  j= length-1
  while i<=j 
    while src[i]==' ' and i<=j
      i+=1
    end  
    head = i
    while src[i]!=' ' and i<=j
        i +=1
    end

    reverse_string src,head,i-1     
  end  
 
  p reverse_string src ,0, length-1

end
reverse_sentence  "   Hello    World   "