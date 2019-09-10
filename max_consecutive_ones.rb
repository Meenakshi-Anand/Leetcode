#  question no 485

# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    count = 0
    max_count = 0
    i =  0
    while (i < nums.length)
         if nums[i] == 1
             count = count+1
         else

             count = 0
         end
        max_count = count if count > max_count
        i = i+1
    end
    max_count
end
