class LinkedList
    attr_accessor :head

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

def prepend(data)
   first_node = @head
   new_node = Node.new(data)
   new_node.next_node = first_node
   @head = new_node
end


    private

    class Node
     attr_accessor :value, :next_node
     def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
     end
     end

end
