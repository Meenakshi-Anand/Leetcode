# question no : 1119
# Given a string S, remove the vowels 'a', 'e', 'i', 'o', and 'u' from it, and return the new string.
#
# Example 1:
#
# Input: "leetcodeisacommunityforcoders"
# Output: "ltcdscmmntyfrcdrs"
# Example 2:
#
# Input: "aeiou"
# Output: ""


# @param {String} s
# @return {String}
def remove_vowels(s)
    s.gsub(/[aeiou]/,"")
end
