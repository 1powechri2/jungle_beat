require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data, current_node = @head)
    if current_node.nil?
      @head = Node.new(data)
    elsif current_node.next_node.nil?
      current_node.next_node = Node.new(data)
    else
      next_current_node = current_node.next_node
      append(data, next_current_node)
    end
  end

  # current node can be nil
  # current node can be not nil
  # current node can have a next node or not
end
