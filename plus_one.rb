#  question no : 66

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
