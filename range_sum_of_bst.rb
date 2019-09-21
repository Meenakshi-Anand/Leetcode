# QUESTION: 938
# Given the root node of a binary search tree, return the sum of values of all nodes with value between L and R (inclusive).
# The binary search tree is guaranteed to have unique values.
#
# Example 1:
#
# Input: root = [10,5,15,3,7,null,18], L = 7, R = 15
# Output: 32
# Example 2:
#
# Input: root = [10,5,15,3,7,13,18,1,null,6], L = 6, R = 10
# Output: 23

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} l
# @param {Integer} r
# @return {Integer}

def range_sum_bst(root, l, r)
    $ans = 0
    dfs(root, l, r)
    $ans
end


def dfs(root,l,r)
    return if root == nil
    $ans += root.val if root.val >= l && root.val <= r
    dfs(root.left,l,r)  if l <  root.val
    dfs(root.right,l,r)  if root.val < r
end 
