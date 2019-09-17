# QUESTION: 203
# Remove all elements from a linked list of integers that have value val.
#
# Example:
#
# Input:  1->2->6->3->4->5->6, val = 6
# Output: 1->2->3->4->5

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
# def remove_elements(head, val)
#     return nil if head == nil
#     head.next = remove_elements(head.next,val)
#     head.val == val ? head.next : head
# end

def remove_elements(head,val)
  sentinal= ListNode.new(nil)
  sentinal.next = head
  prev = sentinal
  curr = head
  while(curr != nil)
    if curr.val == val
     prev.next = curr.next
    else
     prev = curr
    end
    curr =  curr.next
  end
  sentinal.next
end
