# Require the Node class
require_relative 'node'

# Define the LinkedList class
class LinkedList
  # Initialize the linked list with an empty head, size 0, and a tail (which is not actually used)
  def initialize
    @head = nil
    @size = 0
  end

  # Append a new node with the given value to the end of the list
  def append(value)
  # If the value is nil, return nil immediately
  return nil if value.nil?

  # If the list is empty (i.e., @head is nil), create a new node with the given value and set it as the head
  if @head.nil?
    @head = Node.new(value)
  else
    # If the list is not empty, traverse the list to find the last node
    current = @head
    while current.next_node
      # Move to the next node until we reach the last node
      current = current.next_node
    end
    # Create a new node with the given value and append it to the last node
    current.next_node = Node.new(value)
  end
  # Increment the size of the list by 1
  @size += 1
  end

  # Prepend a new node with the given value to the beginning of the list
  def prepend(value)
    return nil if value.nil?
    if @head.nil?
      # If the list is empty, set the head to the new node
      @head = add_node(value)
    else
      # Otherwise, create a new node and set it as the new head, pointing to the previous head
      previous_head = @head
      new_head = Node.new(value)
      @size += 1
      new_head.next_node = previous_head
      @head = new_head
    end
  end

  # Return the size of the list
  def size
    @size
  end

  # Return the head of the list
  def head
    @head
  end

  # Return the tail of the list (i.e., the last node)
  def tail
    return nil if @head.nil?
    current = @head
    while current.next_node
      current = current.next_node
    end
    current
  end

  # Return the node at the given index
  def at(index)
    return @head if index.negative?
    return IndexError, "Index out of range" if index > @size
    current = @head
    index.times do
      current = current.next_node
    end
    current
  end

  # Remove the last node from the list and return its value
  def pop
    if @head.next_node.nil?
      # If the list only has one node, remove it and return a special value
      deleted_node = @head
      @size -= 1
      @head = nil
    else
      # Otherwise, traverse the list to find the last node and remove it
      current = @head
      while current.next_node.next_node && current.next_node
        current = current.next_node
      end

      node_to_delete = current.next_node
      current.next_node = nil
      @size -= 1
      return node_to_delete.value
    end
  end

  # Check if the list contains a node with the given value
  def contains?(value)
    return nil if value.nil?
    current = @head
    while current
      return true if current.value == value # Note: this should be `==` instead of `=`
      current = current.next_node
    end
    false
  end

  # Find the index of the first node with the given value
  def find(value, current = @head, index = 0)
    return nil if current.nil?
    if current.value == value
      return index
    else
      find(value, current = current.next_node, index += 1)
    end
  end

  # Convert the list to a string representation
  def to_string
    res = ''
    current = @head
    while current
      res << "#{current.value} -> "
      current = current.next_node
    end
    res << 'nil'
    res
  end

  # Insert a new node with the given value at the specified index
def insert_at(value, index, curr_node = @head, curr_index = 0)
  return nil if value.nil? || index.negative? || index > @size

  if index == curr_index
    # If the index matches, insert a new node
    new_node = Node.new
    new_node.new_node = curr_nod.next_node
    curr_node.next_node = new_node
  else
    # Otherwise, recursively call insert_at with the next node and incremented index
    insert_at(value, index, curr_node.next_node, curr_index + 1)
  end
end

    def to_string
        res = ''
        current = @head
        while current
            res << "#{current.value} -> "
            current = current.next_node
        end
        res << 'nil'
        res
    end

    def insert_at(value, index, curr_node = @head, curr_index = 0)
        return nil if value.nil? || index.negative? || index > @size

        if index = curr_index
            curr_node.value = value
        else
           insert_at(value, index, curr_node = curr_node.next_node , curr_index += 1)
        end
    end
end

linked_list = LinkedList.new
linked_list.append("A")
linked_list.append("B")
linked_list.append("C")
puts linked_list.to_string
