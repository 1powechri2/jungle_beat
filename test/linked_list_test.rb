require './test/test_helper'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, @list
  end

  def test_list_has_a_head
    assert @list.head.nil?
  end

  def test_append_method
    head        = @list.append("boom")
    first_link  = @list.append("tick")
    second_link = @list.append("bap")
    third_link  = @list.append("tick")
    assert_equal "boom", @list.head.data
    assert_equal "tick", @list.head.next_node.data
    assert_equal "bap",  @list.head.next_node.next_node.data
    assert_equal "tick", @list.head.next_node.next_node.next_node.data
  end

  def test_list_count
    head        = @list.append("boom")
    first_link  = @list.append("tick")
    second_link = @list.append("bap")
    assert_equal 3, @list.count_nodes
  end

  def test_list_to_string
    head        = @list.append("boom")
    assert_equal "boom", @list.to_string
    first_link  = @list.append("tick")
    assert_equal "tick", @list.to_string
    binding.pry
  end
end
