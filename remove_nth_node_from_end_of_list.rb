#  question no 19
# Given a linked list, remove the n-th node from the end of list and return its head.
# Example:
#
# Given linked list: 1->2->3->4->5, and n = 2.
# After removing the second node from the end, the linked list becomes 1->2->3->5.
# Note:
#
# Given n will always be valid.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)

    node_hash = {}
    current_node = head
    idx = 0
    while (current_node!=nil)
      node_hash[current_node] = idx
      current_node = current_node.next
      idx += 1
    end
    last_idx = node_hash.values.max
    remove_idx = (last_idx+1)-n
    prev_node = node_hash.select{|k,v| v == remove_idx-1}.keys.first
    rem_node = node_hash.select{|k,v| v == remove_idx}.keys.first
    if prev_node == nil
      head = rem_node.next

    else
      prev_node.next = rem_node.next
    end
    head
