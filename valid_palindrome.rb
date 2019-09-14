#  question no 125
# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
# Note: For the purpose of this problem, we define empty string as valid palindrome.
#
# Example 1:
#
# Input: "A man, a plan, a canal: Panama"
# Output: true
# Example 2:
#
# Input: "race a car"
# Output: false


# @param {String} s
# @return {Boolean}
def is_palindrome(s)

    arr = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    str=[]
    s.each_char do |c|
        str << c.downcase if  arr.include?c
    end
     str.join("") == str.join("").reverse
end
