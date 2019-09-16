# question no 142
# Given a linked list, return the node where the cycle begins. If there is no cycle, return null.
# To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.
# Note: Do not modify the linked list.
# Example 1:
#
# Input: head = [3,2,0,-4], pos = 1
# Output: tail connects to node index 1
# Explanation: There is a cycle in the linked list, where tail connects to the second node.
#
#
# Example 2:
#
# Input: head = [1,2], pos = 0
# Output: tail connects to node index 0
# Explanation: There is a cycle in the linked list, where tail connects to the first node.
#
#
# Example 3:
#
# Input: head = [1], pos = -1
# Output: no cycle
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

def detect_cycle1(head)
  return nil if (head == nil)
  ptr_1 = head
  ptr_2 = intersect(head)
  return nil if ptr_2 == nil
  while ptr_1 != ptr_2
    ptr_1 = ptr_1.next
    ptr_2 = ptr_2.next
  end
  return ptr_1.value
end

# list = Linkedlist.new()
# loop = list.create_linked_list([3,2,1,4],0)
# detect_cycle1(loop)

#floyds tortoise and hare algorithym
def intersect(head)
  tortoise = head
  hare = head
  while (hare != nil || hare.next!= nil)
    tortoise = tortoise.next
    hare = hare.next.next
    if (tortoise == hare)
      return tortoise
    end
  end
  nil
end
