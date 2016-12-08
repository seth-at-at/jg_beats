require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list.rb'
require './lib/node.rb'

class NodeTest < Minitest::Test
    def test_what_is_the_data
        node = Node.new("plop")
        assert_equal "plop", node.data
    end

    def test_return_nil
        node = Node.new(nil)

        assert_nil node.next_node
    end

    def test_insert_data
      list = LinkedList.new
        list.append("doop")
        assert_equal ("doop"), list.head.data
      list.append("derp")
        assert_equal ("derp"), list.head.next_node.data
    end

    def test_add_to_beginning
        list = LinkedList.new
        list.append("doop")
        list.prepend("buh duh")
        assert_equal ("buh duh"), list.head.data
    end

    def test_to_string
      list = LinkedList.new
      list.append(" doop")
      list.prepend("derp")
      list.append(" zoop")
      assert_equal ("derp doop zoop"), list.to_string
    end

    def test_can_insert
      list = LinkedList.new
      list.append(" doop")
      list.prepend("derp")
      list.append(" zoop")
      list.insert(1, " drop")
      # binding.pry
      assert_equal ("derp drop doop zoop"), list.to_string
    end
end