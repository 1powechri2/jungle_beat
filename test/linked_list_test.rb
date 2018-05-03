require './test/test_helper'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @ll = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, @ll
  end

  def test_list_has_a_head
    assert @ll.head.nil?
  end

  def test_append_method
    head        = @ll.append("flurp")
    first_link  = @ll.append("blorb")
    second_link = @ll.append("lick")
    third_link  = @ll.append("corn")
    assert_equal "flurp", @ll.head.data
    assert_equal "blorb", @ll.head.next_node.data
  end
end
