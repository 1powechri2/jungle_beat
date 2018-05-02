require './test/test_helper'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @ll = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, @oull
  end

end
