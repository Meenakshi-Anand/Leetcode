#  question : 709

# Implement function ToLowerCase() that has a string parameter str, and returns the same string in lowercase.
#
# Example 1:
#
# Input: "Hello"
# Output: "hello"
# Example 2:
#
# Input: "here"
# Output: "here"
# Example 3:
#
# Input: "LOVELY"
# Output: "lovely"

# @param {String} str
# @return {String}
def to_lower_case(str)
    char_hash = Hash[('A'..'Z').zip('a'..'z')]
    str.chars.each_with_index do |c,i|
        if char_hash.has_key?(c)
            str[i] = char_hash[c]
        end
    end
    str
end
