class LinkedList
    attr_acccessor :head

    def initialize
        @head = nil
    end

def append(data)
   if @head.nil?
         @head = Node.new(data)
      else
      curr_node = @head

      while curr_node.next_node
         curr_node = curr_node.next_node
      end

      curr_node.next_node = Node.new(data)
      end
end

    private

    class Node
     attr_acccessor :value, :next_node
     def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
     end
     end

end
