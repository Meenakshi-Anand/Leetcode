# QUESTION: 234
# Given a singly linked list, determine if it is a palindrome.
#
# Example 1:
#
# Input: 1->2
# Output: false
# Example 2:
#
# Input: 1->2->2->1
# Output: true
# Follow up:
# Could you do it in O(n) time and O(1) space?

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  slow = head
  fast = head
  while(fast != nil && fast.next!=nil)
    slow = slow.next
    fast = fast.next.next
  end
  slow = reverse_list(slow)

  p = slow
  q = head
  while(p != nil && q!=nil)
    return false if p.val != q.val
    p = p.next
    q = q.next
  end
  return true
end

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
