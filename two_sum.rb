# question no : 1

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
