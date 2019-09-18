# QUESTION: 94
# Given a binary tree, return the inorder traversal of its nodes' values.
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
# Output: [1,3,2]


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

#  recursion
# def inorder_traversal(root)
#     return [] if root == nil
#     result = inorder_traversal(root.left)+ [root.val]+inorder_traversal(root.right)
# end

# stack
def inorder_traversal(root)
  result = []
  stack = []
  current_node = root
  while(current_node != nil || !stack.empty?)
      while current_node !=nil
          stack.push(current_node)
          current_node = current_node.left
      end
          current_node = stack.pop
          result << current_node.val
          current_node = current_node.right
  end
  return result
end
