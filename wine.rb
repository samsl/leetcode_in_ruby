n = 10
m = 10
s = 10
while n > 1 or m>3 do
   nh = n/2
   mh = m/4
   s = s + nh + mh
   n = n%2 + nh+mh
   m = m%4 + mh+nh
   puts "n=#{n}"
   puts m
end
puts s   
 