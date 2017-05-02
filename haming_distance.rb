# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
	z = x^y
	
	d = 0
	while z!=0
		puts z
		if z & 1==1 
			d+=1
		end
		z=z>>1
	end
    d
end

puts hamming_distance(1,4)