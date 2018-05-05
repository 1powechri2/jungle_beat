require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @counter = 0
  end

  def append(data, current_node = @head)
    # return current_node = Node.new(data) if current_node.nil?
    if current_node.nil?
      @head = Node.new(data)
    elsif current_node.next_node.nil?
      current_node.next_node = Node.new(data)
    else
      next_current_node = current_node.next_node
      append(data, next_current_node)
    end
  end

  def count_nodes(current_node = @head)
    if current_node == nil
      @counter
    elsif current_node != nil
      @counter += 1
      next_node = current_node.next_node
      count_nodes(next_node)
    end
  end

  # Below is the iterative technique
  # def count_nodes(current_node = @head)
  #   until current_node == nil
  #     @counter += 1
  #     current_node = current_node.next_node
  #   end
  #   @counter
  # end

  def to_string(current_node= @head)
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node.data
  end
end
