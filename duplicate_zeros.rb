#  question no 1089
# Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.
# Note that elements beyond the length of the original array are not written.
# Do the above modifications to the input array in place, do not return anything from your function.
#
# Example 1:
#
# Input: [1,0,2,3,0,4,5,0]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
# Example 2:
#
# Input: [1,2,3]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,2,3]


# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  count_zeros = 0
  arr.each_with_index do |n,i|
  count_zeros=count_zeros+1 if n == 0
  end
  len = arr.length + count_zeros
  puts len
  i = arr.length - 1
  j = len - 1
  while (i < j )
  if (arr[i]!= 0)
    arr[j] = arr[i] if(j< arr.length)
  else
    arr[j] = arr[i] if(j< arr.length)
    j = j-1
    arr[j] = arr[i] if(j < arr.length)
  end
    i = i - 1
    j = j - 1
  end
  arr
end
