class Base
def initialize(name)
  @name = name
end

define_method("sayHello") do
	puts "#{@name} says hello"
end

def self.inherited klass
  define_method("sayGoodbye") do
	public_send("sayHello")
  end
  super	
end

end

class A<Base;end	
a = A.new("Spiderman")
a.sayHello
a.sayGoodbye

