#  question no : 65
# Validate if a given string can be interpreted as a decimal number.
#
# Some examples:
# "0" => true
# " 0.1 " => true
# "abc" => false
# "1 a" => false
# "2e10" => true
# " -90e3   " => true
# " 1e" => false
# "e3" => false
# " 6e-1" => true
# " 99e2.5 " => false
# "53.5e93" => true
# " --6 " => false
# "-+3" => false
# "95a54e53" => false
#
# Note: It is intended for the problem statement to be ambiguous. You should gather all requirements up front before implementing one. However, here is a list of characters that can be in a valid decimal number:
#
# Numbers 0-9
# Exponent - "e"
# Positive/negative sign - "+"/"-"
# Decimal point - "."
# Of course, the context of these characters also matters in the input.

# @param {String} s
# @return {Boolean}
def is_number(s)
  s.strip!

  number_seen = false
  e_seen = false
  number_after_e = false
  dot_seen = false

  i = 0
  while (i< s.length)
    if ('0'<= s[i] && s[i]<='9')
      number_seen = true
      number_after_e =  true
    elsif s[i] == '.'
      return false if (e_seen || dot_seen)
       dot_seen = true
    elsif s[i] == 'e'
      return false if (!number_seen || e_seen)
      number_after_e = false
      e_seen = true
    elsif s[i] == '-' || s[i] == '+'
      return false if i != 0  && s[i-1] != "e"
    else
      return false
    end
    i+=1
  end
  number_seen && number_after_e
end 
