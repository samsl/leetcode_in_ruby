def is_match(s, p)
	size1 = s.size
	size2 = p.size
	i = 0
	j = 0
	r = Array.new(size1+1){Array.new(size2+1)}
	r[0][0] = true
    for i in (0..size-1)
    	r[i+1][0] = false
    for j in (0..size-1)
        r[0][j+1] = false

    for i in (1..size1)
    	for j in (1 ..size2)
    		if s[i-1]==p[j-1] or p[j-1]=='.' 
    			r[i][j] ==r[i-1][j-1]
    		end
            if p[j-1] == '*'
            	if j>1 and (p[j-2]==s[i-1] or p[j-2]=='.')
            		r[i][j] = r[i-1][j] or r[i][j-1] or r[i][j-2]
            	elsif j>1 and p[j-2]!=s[i-1]
            		r[i][j] = r[i][j-2]
            	else return false
            	end
            end
        end
    end

end
puts is_match(s,p)