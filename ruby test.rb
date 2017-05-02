def swap(a,b)
	puts "before"
	puts a
	puts b
	a,b=b,a
	puts "before"
	puts a
	puts b
end
a,b="Hello","World"
swap(a,b)
puts "OUT OF FUNCTION"
puts a
puts b



def change(a)
	a["a"]=2
end

c={"a"=>1}
change(c)
puts c.to_s

class A
	def initialize(a=3)
		@a = a
		puts @a
	end
	def print

		puts "I'm father"
	end
end

class B< A
	def initialize(b)
		@b = b
		puts @b
		super()
	end
	def print
		puts "I'm child"
	end
end

b = B.new(0)
b.print
