# Method name: factorial
# Inputs:      A single non-negative integer, n
# Returns:     The factorial of n (see below)
# Prints:      Nothing

# The factorial of 5 is denoted by 5! and is defined as
#   5! = 5*4*3*2*1
#
# In English, you'd read "5!" as "five factorial".  In general, the factorial
# of a number is the product of every number from that number down to 1, so
#
#   4! = 4*3*2*1
#  10! = 10*9*8*7*6*5*4*3*2*1
#

def factorial(n)
  product = 1
  (2..n).each do |i|
    product = product * i
  end
  product
end

if __FILE__ == $0
  # What are the common cases?  What are the corner cases?
  # Your sanity checks should look like
  p factorial(0) == 1
  p factorial(1) == 1
  p factorial(4) == 4*3*2*1
  p factorial(10) == 10*9*8*7*6*5*4*3*2*1
end
