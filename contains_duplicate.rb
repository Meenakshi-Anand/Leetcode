#  question no 217

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    num_hash = {}
    nums.each_with_index do |n,i|
        if num_hash[n]
            return true
        else
            num_hash[n] = i
        end
    end
     return false
end
