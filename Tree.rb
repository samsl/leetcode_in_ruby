class Tree
	def initialize data,left,right
		@data = data
		@left = left
		@right = right
	end

	def leftchild
	    @left
	end
	
	def rightchild
	    @right
	end
	
	def data
		@data
     end		
    def self.preorder root
    	puts root.data
    	preorder root.leftchild if root.leftchild !=nil
        preorder root.rightchild if root.rightchild !=nil
    end 

    def self.preorder_nonrecurrsion root
    	stack = Array.new
    	stack.push root
    	while stack.size>0
    		current_node = stack.pop
            puts current_node.data
            stack.push current_node.rightchild if current_node.rightchild!=nil
            stack.push current_node.leftchild if current_node.leftchild!=nil
        end   
    end   

    def self.midorder root
       	midorder root.leftchild if root.leftchild  !=nil
       	puts root.data
        midorder root.rightchild if root.rightchild !=nil
    end	


    def self.midorder_nonrecurrsion root
        stack = Array.new
        current_node = root
        begin
	       	while current_node!=nil
	            stack.push current_node    
	            current_node =  current_node.leftchild        
	        end	
	        current_node = stack.pop  
	        puts current_node.data
	        current_node = current_node.rightchild	     
    	end while stack.size>0 or current_node!=nil   
    end	
    def self.postorder root
       postorder root.leftchild if root.leftchild!=nil
       postorder root.rightchild if root.rightchild !=nil 
       puts root.data 
    end	

    def self.postorder_nonrecurrsion root
        stack = Array.new
        current_node = root
        last_node=nil
        begin
	       	while current_node!=nil
	            stack.push current_node    
	            current_node =  current_node.leftchild        
	        end        
	   
	        current_node = stack[-1]
	     
	        while stack.size>0 and (current_node.rightchild == nil or current_node.rightchild == last_node)
	        	puts current_node.data
	        	last_node = current_node
	        	stack.pop
                current_node = stack[-1]
               
	        end     
	         current_node = current_node.rightchild if current_node!=nil
          
    	end while stack.size>0 
    end 	

    def self.postorder_nonrecurrsion2 root
    	stack =Array.new
    	stack.push root
    	last_node=nil
    	while stack.size>0
    		current_node = stack[-1]    		
    		if (current_node.leftchild==nil and current_node.rightchild==nil) or (last_node !=nil and (current_node.leftchild==last_node or current_node.rightchild==last_node))
    			stack.pop
    			puts current_node.data
    			last_node = current_node
    		else 
    			if current_node.rightchild !=nil
    		    	stack.push current_node.rightchild
    		    end	
    		    if current_node.leftchild !=nil
    				stack.push current_node.leftchild
    			end	
    		end
    	end	    	
    end

    def self.least_common_ancestor root, node1,node2
       return nil if root==nil
       if root==node1 or root==node2
       	return root
       else
        lnode = least_common_ancestor root.leftchild,node1,node2
        rnode = least_common_ancestor root.rightchild,node1,node2	
        if (lnode!=nil) and (rnode!=nil) 
        	return root
        else 
          return lnode if lnode!=nil
          return rnode if rnode!=nil
         end 		
       end	
    end

    def self.tree_height root
       return 0 if root==nil
       lheight = tree_height root.leftchild
       rheight = tree_height root.rightchild
       return lheight > rheight ? (lheight+1) : (rheight+1)
	end

end

a = Tree.new(10,nil,nil)
b = Tree.new(9,a,nil)
c = Tree.new(8,nil,b)
d = Tree.new(4,c,nil)
e = Tree.new(2,d,nil)
f = Tree.new(3,nil,nil)
g = Tree.new(1,e,f)   

p (Tree.least_common_ancestor g,c,d).data

