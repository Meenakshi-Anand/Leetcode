#  question no 160
# Write a program to find the node at which the intersection of two singly linked lists begins.
#
# Example 1:
#
# Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,0,1,8,4,5], skipA = 2, skipB = 3
# Output: Reference of the node with value = 8
# Input Explanation: The intersected node's value is 8 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [4,1,8,4,5]. From the head of B, it reads as [5,0,1,8,4,5]. There are 2 nodes before the intersected node in A; There are 3 nodes before the intersected node in B.
#
# Example 2:
#
# Input: intersectVal = 2, listA = [0,9,1,2,4], listB = [3,2,4], skipA = 3, skipB = 1
# Output: Reference of the node with value = 2
# Input Explanation: The intersected node's value is 2 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [0,9,1,2,4]. From the head of B, it reads as [3,2,4]. There are 3 nodes before the intersected node in A; There are 1 node before the intersected node in B.
#
# Example 3:
#
# Input: intersectVal = 0, listA = [2,6,4], listB = [1,5], skipA = 3, skipB = 2
# Output: null
# Input Explanation: From the head of A, it reads as [2,6,4]. From the head of B, it reads as [1,5]. Since the two lists do not intersect, intersectVal must be 0, while skipA and skipB can be arbitrary values.
# Explanation: The two lists do not intersect, so return null.

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

def intersection_of_two_lists(node_a,node_b)
   return nil if node_a || node_b == nil
   ptr_1 = node_a
   ptr_2 = node_b
   while (ptr_1 != ptr_2 )
    ptr_1 =ptr_1.next
    ptr_2 =ptr_2.next
    ptr_1 = node_b if ptr_1 = nil
    ptr_2 = node_a if ptr_2 = nil
  end
  ptr_1
end
