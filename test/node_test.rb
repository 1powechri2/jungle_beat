require './test/test_helper'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new
    @node_data = Node.new("florp")
  end

  def test_node_exists
    assert_instance_of Node, @node
  end

  def test_node_has_data_variable
    assert @node.data.nil?
  end

  def test_data_variable_can_be_assigned
    assert_equal "florp", @node_data.data
  end

  def test_node_has_node_pointer
    assert @node.next_node.nil?
  end

  def test_node_pointer_can_point
    @node.next_node = Node.new
    assert_instance_of Node, @node.next_node
  end
end
