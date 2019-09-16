#  question no 876
# Given a non-empty, singly linked list with head node head, return a middle node of linked list.
# If there are two middle nodes, return the second middle node.
#
# Example 1:
#
# Input: [1,2,3,4,5]
# Output: Node 3 from this list (Serialization: [3,4,5])
# The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
# Note that we returned a ListNode object ans, such that:
# ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
# Example 2:
#
# Input: [1,2,3,4,5,6]
# Output: Node 4 from this list (Serialization: [4,5,6])
# Since the list has two middle nodes with values 3 and 4, we return the second one.

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
# def middle_node(head)
#     length = 0
#     first = head
#     while (first!=nil)
#         length += 1
#         first = first.next
#     end
#     mid_idx = length/2
#     first = head
#     i = 0
#     while (i < mid_idx)
#         i+=1
#         first = first.next
#     end
#     first
# end

def middle_node(head)
  slow = head
  fast = head
  while fast != nil && fast.next != nil
    slow = slow.next
    fast = fast.next.next
  end
  slow
end
