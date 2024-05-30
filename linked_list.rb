class Node

  attr_accessor :value, :next_node

  def initialize(value)

    @value = value
    @next_node = nil

  end

end # end of node class



class LinkList

 attr_accessor :node

 def initialize

  @node = nil

 end # end initialize

 def add_list(value)

  if @node.nil?
    @node = Node.new(value)
  else
    current = @node

    while  current.next_node

      current = current.next_node
    end
    current.next_node = Node.new(value)

  end
 end # end addList




 def show_list
   current = @node

   while current

    print "#{current.value} -> "
    current = current.next_node
   end

   p nil
 end


end



list = LinkList.new

list.add_list(10)
list.add_list(20)

list.show_list
