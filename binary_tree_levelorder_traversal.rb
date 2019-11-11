# QUESTION: 102
# Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).
#
# For example:
# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its level order traversal as:
# [
#   [3],
#   [9,20],
#   [15,7]
# ]

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    levels = []
    return levels if root == nil
    helper(root,0,levels)
    levels
end

def helper(root,level,levels)
    levels[level] ||=  []
    levels[level] << root.val

    helper(root.left,level+1,levels) if root.left != nil
    helper(root.right,level+1,levels) if root.right != nil

end

#  iterative approach
def level_order(root)
    return [] if root == nil
    result = []
    queue = []
    queue.unshift(root)
    while(!queue.empty?)
        size = queue.length()
         i= 0
        new_arr = []
        while (i < size)
        i = i + 1
        current_node = queue.pop
        new_arr.push(current_node.val)

        queue.unshift(current_node.left) if current_node.left!=nil
        queue.unshift(current_node.right)  if current_node.right!=nil
        end
        result << new_arr
    end
    result
end
