#  question no : 66

# Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
# The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
# You may assume the integer does not contain any leading zero, except the number 0 itself.
#
# Example 1:
#
# Input: [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.
# Example 2:
#
# Input: [4,3,2,1]
# Output: [4,3,2,2]
# Explanation: The array represents the integer 4321.


# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    return [1] if digits.length == 0
    i = digits.length - 1
    carryOver = 0

    while ( i >= 0)

        if(carryOver == 1 || i == digits.length-1)
            digits[i] = digits[i] + 1
            carryOver = 0
            if (digits[i] == 10)
                digits[i] = 0
                digits = [1] + digits if i == 0
                carryOver = 1
            end
        else
            return digits
        end

        i = i-1;
    end
    digits
end
