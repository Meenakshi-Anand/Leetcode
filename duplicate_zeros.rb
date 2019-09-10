#  question no 1089

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
