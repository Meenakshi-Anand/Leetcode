#  question no 1099

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
