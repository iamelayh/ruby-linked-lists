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

  def size
    count = 0
    curr_node = @head
    while curr_node
      count += 1
      curr_node = curr_node.next_node
    end
    count
  end

  def head
    @head
  end

  def tail
    return nil if @head.nil?

    curr_node = @head
    while curr_node.next_node
      curr_node = curr_node.next_node
    end
    curr_node
  end

  def at(index)
    return @head if index <= 0
    return IndexError, "Index out of range" if index > self.size
    curr_node = @head
    index.times do
      curr_node = curr_node.next_node
    end
    curr_node
  end

  def pop
     if @head.next_node.nil?
        deleted_node = @head
        @head = nil
        return :HEAD_REMOVED
     else
        curr_node = @head

        # 1 > 2 > 3 > 4 > nil
        while curr_node.next_node && curr_node.next_node.next_node
         curr_node = curr_node.next_node
        end
    deleted_node = curr_node.next_node
    curr_node.next_node = nil
    return deleted_node.value
   end

  end

  def contains?(data, curr_node = @head)
     return false if curr_node.nil?

   if curr_node.value == data
      true
   else
      contains?(data, curr_node.next_node)
   end

  end

  def find(data, curr_node = @head, index = 0)
   return nil if curr_node.nil?

   if curr_node.value == data
      return index
   else

      find(data, curr_node.next_node, index + 1)
   end

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


my_list = LinkedList.new
my_list.append(1)
my_list.append(2)
my_list.append(3)



