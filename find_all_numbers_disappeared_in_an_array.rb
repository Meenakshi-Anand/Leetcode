#  question no 448

# Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
# Find all the elements of [1, n] inclusive that do not appear in this array.
# Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
#
# Example:
#
# Input:
# [4,3,2,7,8,2,3,1]
#
# Output:
# [5,6]

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  result = []
  nums.each_with_index do |n,i|
    val = (n.abs-1 )
    nums[val] = -nums[val] if (nums[val] > 0)
  end
  nums.each_with_index do |n,i|
    result << i+1 if (n > 0)
  end
  result
end
