# QUESTION: 83
# Given a sorted linked list, delete all duplicates such that each element appear only once.
#
# Example 1:
#
# Input: 1->1->2
# Output: 1->2
# Example 2:
#
# Input: 1->1->2->3->3
# Output: 1->2->3

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
def delete_duplicates(head)
    return nil if head == nil
    return head if head.next == nil
    current_node = head
    while(current_node !=nil && current_node.next != nil)
        if (current_node.val == current_node.next.val)
            current_node.next = current_node.next.next
        else
            current_node = current_node.next
        end
    end
    head
end
