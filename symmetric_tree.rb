# QUESTION: 101
# Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
#
# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
#
#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
#
#
# But the following [1,2,2,null,3,null,3] is not:
#
#     1
#    / \
#   2   2
#    \   \
#    3    3

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
def is_symmetric(root)
    return true if root == nil
    is_mirror(root.left,root.right)
end

def is_mirror(t1,t2)
    return true if (t1 == nil && t2 == nil)
    return false if (t1 == nil || t2 == nil)

    t1.val == t2.val && is_mirror(t1.left,t2.right) && is_mirror(t1.right,t2.left)
end
