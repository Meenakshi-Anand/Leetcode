# QUESTION: 965
# A binary tree is univalued if every node in the tree has the same value.
# Return true if and only if the given tree is univalued.
#
# Example 1:
# Input: [1,1,1,1,1,null,1]
# Output: true
# Example 2:
# Input: [2,2,2,5,2]
# Output: false

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_unival_tree(root)
     return true if root == nil
     if (root.left != nil) && (root.left.val != root.val)
         result = false
     elsif (root.right != nil) && (root.right.val != root.val)
         result = false
     else
         result = true
     end
    result && is_unival_tree(root.left) && is_unival_tree(root.right)
end
