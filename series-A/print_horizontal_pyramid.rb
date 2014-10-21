# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******

def print_line(count)
  (1..count).each do |i| # or, equivalently, for i in (1..count)
    print "*"            # This prints a single "*"
  end
end

def print_line_of_spaces(count)
  (1..count).each do |i| # or, equivalently, for i in (1..count)
    print " "            # This prints a single "*"
  end
end

def print_horizontal_pyramid(height)
    count = height
    (1..height).each do |r|
        count -= 1
        print_line_of_spaces(count)
        print_line(r)
        print_line(r-1)
        print "\n"             # This forces the output to the next like, like hitting "return" on the keyboard
    end
end

if __FILE__ == $0
  print_horizontal_pyramid(5)
end
