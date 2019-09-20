# QUESTION: 872
# Consider all the leaves of a binary tree.  From left to right order, the values of those leaves form a leaf value sequence.
# For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).
# Two binary trees are considered leaf-similar if their leaf value sequence is the same.
# Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
    arr1 = leaves(root1)
    arr2 = leaves(root2)
    return false if arr1.length != arr2.length
    arr1.each_with_index do |el,idx|
        return false if arr2[idx] != el
    end
    return true
end

def leaves(root)
    return [] if root == nil
    arr = []
    arr.push(root.val) if root.left == nil && root.right == nil
    arr+leaves(root.left)+leaves(root.right)
end 
