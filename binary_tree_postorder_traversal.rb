# QUESTION: 145
# Given a binary tree, return the postorder traversal of its nodes' values.
#
# Example:
#
# Input: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3
#
# Output: [3,2,1]
# Follow up: Recursive solution is trivial, could you do it iteratively?

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
    return [] if root == nil
    result = []
    result = postorder_traversal(root.right) + result if (root!= nil)
    result = postorder_traversal(root.left) + result if (root!= nil)

    result << root.val
end

# iterative approach
def postorder_traversal(root)
    return [] if root == nil
    result = []
    stack = []
    stack.push(root)
    while (!stack.empty?)
        current_node = stack.pop
        result.unshift(current_node.val)

        stack.push(current_node.left) if current_node.left != nil
        stack.push(current_node.right) if current_node.right != nil

    end
    result
end
