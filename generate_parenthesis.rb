def generate_parenthesis(n)
   a = Array.new
   if n==1
   	a.push("()")
   elsif n>1
    b = generate_parenthesis(n-1)
    b.each do |e|
    	a.push ("(#{e})") if a.index("(#{e})").nil? 
    	a.push ("()#{e}") if a.index("()#{e}").nil? 
    	a.push ("#{e}()") if a.index("#{e}()").nil? 
    end
end
    a
end
puts (generate_parenthesis(3).to_s)