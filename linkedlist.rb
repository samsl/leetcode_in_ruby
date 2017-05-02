class ListNode
	attr_accessor :val, :next
	def initialize(val,next_node)
		@val =val
		@next = next_node
	end
	def self.print(head)
         p = head
         while p!=nil
         	puts ("#{p.val}->")
         	p = p.next
         end
	end
end
def remove_nth_from_end(head,n)
	if n==0 
		puts "n should not be 0"
		return head
		end 
	p = head
	q = head
	i = 0
	while p.next!=nil
		p = p.next
		if i ==n
			q = q.next
		else
			i +=1
		end

       
    end
    if n-i==1
    	head = head.next

    elsif i==n
    	p = q.next.next
   		 q.next = p
   	else
       puts "There is no #{n} from end"

   end
   return head
end

a = ListNode.new(1,nil)
b = ListNode.new(2,a)
c = ListNode.new(3,b)
ListNode.print(remove_nth_from_end(c,0))

