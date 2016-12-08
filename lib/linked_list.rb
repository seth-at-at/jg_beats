require'pry'
require_relative'node.rb'
class LinkedList
    attr_accessor :head, :current, :append, :count

    def initialize
        @head = nil
        @current = 0
        @count = 0
    end
# node = Node.new(data)

    def append(data)
        @count += 1
        node = Node.new(data)
        jenga = @head
        if @head.nil?
         @head = node
         else
         until jenga.next_node.nil?
             jenga = jenga.next_node
         end
             jenga.next_node = node
        end

    end


    def prepend(data)
        node = Node.new(data)
        current_head = @head
        @head = node
        node.next_node = current_head
    end

    def to_string
        all_node = ""
        node = @head
        until node.nil?
            all_node += node.data
            node = node.next_node
        end
        all_node
    end

    def insert(position, data)
        node = Node.new(data)
        current_node = @head
        @count = 0
            until @count == position
                # binding.pry          
                @count += 1
                current_node = current_node.next_node  
            end
        node.next_node = current_node
        current = @head
        count = 0

            until count == (position - 1)
            count += 1
            current = current.next_node
            end
        current.next_node = node
    end

    # end
end