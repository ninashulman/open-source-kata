# Method name: count_in_list(list, item_to_count)
# Inputs:      1. a list of anything, 2. an item for us to count in the list
# Returns:     The number of times our item is contained in the input list
# Prints:      Nothing
#
# For example,
#   count_in_list([1,2,3], 1)  == 1
#   count_in_list([1,2,3], -1) == 0
#   count_in_list([1,1,1], 1)  == 3

# --- NOTE ---
# Ruby has a built-in method to do this, but the purpose of this kata is
# to write it yourself.
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-count

def count_in_list(list, item_to_count)
  # You'll need three things:
  count = 0 #  1. A running total of the number of times you've seen the item
  list.each do |item| #  2. A way to loop/iterate through the list
    if item == item_to_count
      count += 1   #  3. A way to add to the running total as you see the item
    end
  end
  return count
end

if __FILE__ == $0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
p count_in_list([1,2,3], 1)  == 1
p count_in_list([1,2,3], -1) == 0
p count_in_list([1,1,1], 1)  == 3
end
