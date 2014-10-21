# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  # This is your job. :)
  saved = list.first
  list.each do |item|
    if item.length > saved.length
      saved = item
    end
  end
  return saved
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  p longest_string(['Nina', 'school', 'outmost']) == 'outmost'
  # How else will you be sure your code does what you think it does?
end
