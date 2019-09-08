# question no : 283

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
