# question no : 206
# Reverse a singly linked list.
#
# Example:
#
# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL
# Follow up:
#
# A linked list can be reversed either iteratively or recursively. Could you implement both?

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if (head == nil || head.next == nil)
  original_head = head
  current_head = head
  while(original_head.next!= nil)
      head = original_head.next
      original_head.next = original_head.next.next
      head.next = current_head
      current_head = head
  end
  head
end
