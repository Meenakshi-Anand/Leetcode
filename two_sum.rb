# question no : 1

# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# Brute force
# def two_sum(nums, target)
#     nums.each_with_index do |n,i|
#         j = i+1
#         while(j < nums.length)
#             return [i,j] if nums[i]+nums[j] == target
#             j+=1
#         end
#     end
# end

# 2 pass hash
# def two_sum(nums, target)
#     hash = {}
#     nums.each_with_index do |n,i|
#         hash[n] = i
#     end
#     nums.each_with_index do |m,j|
#         return [j,hash[target-m]] if hash[target-m] && hash[target-m] != j
#     end
# end

# one pass hash
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |n,i|
        return [i,hash[target-n]] if hash[target-n]
        hash[n] = i
    end
end
