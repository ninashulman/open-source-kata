# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  # This is your job. :)
  saved = list.first
  list.each do |item|
    if item.length < saved.length
      saved = item
    end
  end
  return saved
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p shortest_string(['Nina', 'school', 'outmost']) == 'Nina'
  p shortest_string(['a', 'ab', 'abc']) == 'a'
end
