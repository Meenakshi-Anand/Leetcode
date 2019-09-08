# question no : 747

# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
    largestNum = nums[0];
    position = 0 ;
    i = 1 ;
    while ( i <  nums.length)
        if (nums[i] > largestNum)

            if(nums[i] >= largestNum*2)
                position = i
            else
                position = -1
            end

            largestNum = nums[i];
        else
            position = -1 if (largestNum < nums[i]*2)
        end

        i=i+1;
    end
    return position;
end
