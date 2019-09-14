# question no : 925

# Your friend is typing his name into a keyboard.  Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.
# You examine the typed characters of the keyboard.  Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.
#
# Example 1:
#
# Input: name = "alex", typed = "aaleex"
# Output: true
# Explanation: 'a' and 'e' in 'alex' were long pressed.
# Example 2:
#
# Input: name = "saeed", typed = "ssaaedd"
# Output: false
# Explanation: 'e' must have been pressed twice, but it wasn't in the typed output.
# Example 3:
#
# Input: name = "leelee", typed = "lleeelee"
# Output: true
# Example 4:
#
# Input: name = "laiden", typed = "laiden"
# Output: true
# Explanation: It's not necessary to long press any character.

# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  g1 = groupify(name)
  g2 = groupify(typed)
  g1_keys = g1[0]
  g2_keys = g2[0]
  g1_count = g1[1]
  g2_count =g2[1]
  return false if g1_keys.join("") != g2_keys.join("")
  g1_count.each_with_index do |c,i|
    if(c > g2_count[i])
        return false
    end
  end
  return true
end


def groupify(s)
  char_arr = s.chars
  i=0
  keys = []
  count_arr = []
  count = 0
  while(i < char_arr.length)
    if keys.last == char_arr[i]
        count = count + 1
    else
        count_arr << count if (i != 0 )
        count = 1
        keys << char_arr[i]
    end
    count_arr << count if (i == char_arr.length-1)
    i=i+1
  end
  group = []
  group << keys
  group << count_arr
  group
end
