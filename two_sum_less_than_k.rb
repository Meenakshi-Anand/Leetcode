#  question no 1099

# Given an array A of integers and integer K, return the maximum S such that there exists i < j with A[i] + A[j] = S and S < K. If no i, j exist satisfying this equation, return -1.
#
# Example 1:
#
# Input: A = [34,23,1,24,75,33,54,8], K = 60
# Output: 58
# Explanation:
# We can use 34 and 24 to sum 58 which is less than 60.
# Example 2:
#
# Input: A = [10,20,30], K = 15
# Output: -1
# Explanation:
# In this case it's not possible to get a pair sum less that 15.

# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}

def two_sum_less_than_k(a, k)
  a.sort!
  sum = -1
  i= 0
  j= a.length-1
    while(i<j)
        if(a[i]+a[j]<k)
            sum = a[i]+a[j] if (sum < a[i]+a[j])
            i=i+1
        else
            j=j-1
        end
    end
    sum
end
