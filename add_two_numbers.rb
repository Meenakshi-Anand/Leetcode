# QUESTION: 2
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
#
# Example:
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = ListNode.new(0)
  current = sum
  carry = 0
  while(l1 != nil || l2 != nil)
     if l1 == nil
           val1= 0
     else
           val1 = l1.val
     end

      if l2 == nil
           val2= 0
     else
           val2 = l2.val
     end

      if carry == 0
          value = (val1+val2)%10
          carry = (val1+val2)/10
          new_node = ListNode.new(value)
          current.next = new_node 
      else
          value = (val1+val2+carry)%10
          carry = (val1+val2+carry)/10
          new_node = ListNode.new(value)
          current.next = new_node
      end
      l1 = l1.next if l1 != nil
      l2 = l2.next if l2 != nil
      current = current.next
  end

  while carry != 0
      value = carry % 10
      carry = carry / 10
      new_node = ListNode.new(value)
      current.next = new_node
      current = current.next
  end
  sum.next
end
