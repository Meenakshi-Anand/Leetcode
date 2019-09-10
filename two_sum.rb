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
def two_sum(nums, target)
    i = 0
    while (i < nums.length-1)
        j= i+1
        while (j < nums.length)
            return [i,j] if ( nums[i]+nums[j] == target)
            j= j +1
        end
        i = i+1
    end
end
