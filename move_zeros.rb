# question no : 283
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
#
# Example:
#
# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]
# Note:
#
# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.
# @param {Integer[]} nums
# @return {Integer}
def move_zeroes(nums)
    i = 0
    loop_count = 0
    while (i < nums.length)
        if(nums[i] == 0)

            if(i==0)

            nums.shift;
            nums.push(0);

            else

            nums.slice!(i)
            nums.push(0);

            end

            i=i-1;
            return nums if loop_count > nums.length

        end
        loop_count = loop_count+1;
        i=i+1;
    end
    nums
end
