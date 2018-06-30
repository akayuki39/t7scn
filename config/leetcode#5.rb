# @param {String} s
# @return {String}
def longest_palindrome(s)
  i = 0
  s.each_char do
    s.insert(2*i, '#')
    i += 1
  end
  s += '#'
  puts s
end

longest_palindrome("abanfhejoiafewjlfa")