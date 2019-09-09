#  question no : 917
# Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.
#
# Example 1:
#
# Input: "ab-cd"
# Output: "dc-ba"
# Example 2:
#
# Input: "a-bC-dEf-ghIj"
# Output: "j-Ih-gfE-dCba"
# Example 3:
#
# Input: "Test1ng-Leet=code-Q!"
# Output: "Qedo1ct-eeLg=ntse-T!"


# @param {String} s
# @return {String}
def reverse_only_letters(s)
letters = ('a'..'z').to_a + ('A'..'Z').to_a
arr = []
s.chars.each do |v|
    arr.push(v) if letters.include? v
end
s.chars.each_with_index do |v,i|
     if letters.include? v
         s[i] = arr.pop
     end
end
s
end
