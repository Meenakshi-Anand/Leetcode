# question no : 724

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    return -1 if nums.length == 0;

    i = 0  ;
    sumRight = 0;
    sumLeft = nums[1..nums.length-1].sum;

    while (i < nums.length)

        if (sumRight == sumLeft)
            return i;
        end

        sumRight = sumRight + nums[i] ;

        if(i == nums.length-1)
        sumLeft = 0;
        else
        sumLeft = sumLeft - nums[i+1];
        end

        i=i+1;
    end
    return -1;
end
