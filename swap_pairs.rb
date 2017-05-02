class ListNode
	attr_accessor :val, :next
	def initialize(val)
		@val = val
		@next=nil
	end
	def self.to_s(l)
		while l!=nil
			puts l.val+"->"
			l = l.next
		end
	end
end
def swap_pairs(head)
	p = head
	ahead = nil
	
	while p.next!=nil
		q = p.next
		if ahead == nil
			p.next,q.next = q.next,p
			ahead = p
			head = q
			p = p.next
		else
			p.next,q.next = q.next,p
			ahead.next = q
			ahead = p
			p = p.next
		end
		break if p==nil
	end
	head
	
end
 
 a = ListNode.new('a')
 a.next = ListNode.new('b')
 

 a.next.next = ListNode.new('c')

 a.next.next.next = ListNode.new('d')
   ListNode.to_s( swap_pairs(a))
 

