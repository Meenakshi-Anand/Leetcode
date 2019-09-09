#  question no 387
# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
#
# Examples:
#
# s = "leetcode"
# return 0.
#
# s = "loveleetcode",
# return 2.

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    s.chars.uniq.each do |c,i|
        return s.index(c) if s.count(c) == 1
    end
    -1
end
