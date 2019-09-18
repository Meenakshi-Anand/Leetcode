# QUESTION: 144
# Given a binary tree, return the preorder traversal of its nodes' values.
# Example:
# Input: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3
#
# Output: [1,2,3]
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

def preorder_traversal(root)
  stack = []
  output = []
  return output if root == nil
  stack << root
  while !stack.empty?
    node = stack.pop
    output << node.val
    stack << node.right if node.right
    stack << node.left if node.left
  end
  output
end

#  Morris Traversal
# def preorder_traversal(root)
#     result = []
#     node = root
#     while (node != nil)
#         if(node.left == nil)
#             result << node.val
#             node = node.right
#         else
#             predecessor = node.left
#             while( (predecessor.right != nil) &&           (predecessor.right != node ))
#                 predecessor = predecessor.right
#             end
#             if predecessor.right == nil
#                 result << node.val
#                 predecessor.right = node
#                 node = node.left
#             else
#                 predecessor.right = nil
#                 node = node.right
#             end
#         end
#     end
#   result
# end
