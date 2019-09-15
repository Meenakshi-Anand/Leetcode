# question no 141
# Given a linked list, determine if it has a cycle in it.
#
# To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.
#
# Example 1:
#
# Input: head = [3,2,0,-4], pos = 1
# Output: true
# Explanation: There is a cycle in the linked list, where tail connects to the second node.
#
#
# Example 2:
#
# Input: head = [1,2], pos = 0
# Output: true
# Explanation: There is a cycle in the linked list, where tail connects to the first node.
#
#
# Example 3:
#
# Input: head = [1], pos = -1
# Output: false
# Explanation: There is no cycle in the linked list.


require 'set'

class Node
attr_accessor :value , :next
  def initialize(value)
    @value = value
    @next = nil
  end
end


class Linkedlist
  attr_accessor :head

  def initialize()
    @head = nil
  end

  def create_linked_list (arr,pos)
    return nil if (pos == -1)
    current_node = nil
    pos_node = nil
    arr.each_with_index do |el,i|
      new_node = Node.new(el)
      puts i
      if (i == 0)
        @head = new_node
        current_node = @head
      elsif (i == arr.length-1)
        new_node.next = pos_node
        current_node.next = new_node
      else
        current_node.next = new_node
        current_node = current_node.next
      end

      if (i == pos)
        pos_node = current_node
      end

    end
    @head
  end

  def print_list()
  current_node = @head
  while(current_node.next != nil)
  current_node= current_node.next
  end
  end

end




def has_cycle?(head)
  if (head == nil || head.next == nil )
      return false
  end
  slow_pointer = head
  fast_pointer = head.next
  while(slow_pointer != fast_pointer )

    if (fast_pointer == nil || fast_pointer.next ==     nil )

        return false
    end

    slow_pointer = slow_pointer.next
    fast_pointer = fast_pointer.next.next
  end
  return true
end

# test cases
# list = Linkedlist.new()
# loop = list.create_linked_list([3,2,0,-4],1)
# has_cycle?(loop)

def detect_cycle(head)
  cycle_set = Set.new()
  current_node =  head
  while current_node != nil
    if (cycle_set.include?(current_node))
      return current_node.value
    end
    cycle_set << current_node
    current_node = current_node.next
  end
  nil
end

# list = Linkedlist.new()
# loop = list.create_linked_list([3,2],0)
# detect_cycle(loop)
