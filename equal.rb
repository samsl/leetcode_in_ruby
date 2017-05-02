class Item
	attr_accessor :item_name, :qty
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def hash
    	@item_name.hash^@qty.hash
    end
    def ==(other_item)
    	@item_name==other_item.item_name and @qty==other_item.qty
    end
    def eql?(other_item)
    end
end

p Item.new("abcd",1)==Item.new("abcd",1)