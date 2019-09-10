#  question no 1051

# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  count = 0
  heights.sort.each_with_index do |n,i|
      if heights[i]!= n
          count = count + 1
      end
  end
    count
end
