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
