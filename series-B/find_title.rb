# Method name: find_title
# Inputs:      A URL
# Returns:     The contents of the <title>...</title> tag at that URL
# Prints:      Nothing

require 'open-uri'
require 'nokogiri'

# Note #1
# open-uri allows us to download the contents of any URL using the "open" method
#
#  contents = open('https://www.google.com/').read
#
# The "contents" variable now contains a string of all the HTML living at
# https://www.google.com. open-uri comes with Ruby, so you DO NOT need to
# install anything extra.

def copy_title(contents, i)
  p contents[i-6]
  p contents[i-5]
  p contents[i-4]
  p contents[i-3]
  p contents[i-2]
  p contents[i-1]
  p contents[i]
end

def find_title(url)
  # Solution #1 (working)
  # return Nokogiri::HTML(open(url)).title
  
  # Solution #2 (working)
  # In three "easy" steps:
  #   1. Use "open" to download the contents of URL
  
  contents = open(url).read  #contents is a String
  # p contents.slice(/<title*<\/title>/) #need find correct regex
  
  #   2. Use one of the methods described below to extract the
  #      contents of the title tag 

  # Find the begining and the end of the string within <title>...</title>
  i = contents.index("<title")
  k = contents.index("</title>")

  contents.slice(i..k).each_char do |char|
    # find the index of the closing '>' in <title>
    if char == '>'
      break
    else
      i += 1
    end
  end

  #   3. Return the contents of the title tag.
  contents.slice(i+1..k-1)
end

if __FILE__ == $0
  # Some sanity checks!

  p find_title("https://www.google.com") == "Google"
  p find_title("https://www.yahoo.com") == "Yahoo"
  p find_title("https://www.facebook.com") == "Welcome to Facebook - Log In, Sign Up or Learn More"
end

# Note #2
# Once you have the HTML, there are a few ways to extract the contents
# of the title tag.
#
# 1. Use a library that can parse HTML
# We recommend the "nokogiri" Ruby gem.  To use nokogiri, first install it
#
#   gem install nokogiri
#
# and require it in your Ruby code
#
#   require 'nokogiri'
#
# Nokogiri can be difficult to install, so if this doesn't work let us know!
#
# See http://nokogiri.org/tutorials/parsing_an_html_xml_document.html
# for examples.  If Nokogiri is installed, getting the title of a web page is as
# simple as
#
#   Nokogiri::HTML(open(url)).title
#
# 2. Use regular expressions
# Regular expressions (or "regex") are a mini-language to specify search
# patterns inside a larger piece of text.  They are very powerful, but the
# syntax is intimidating until you get used to it.
#
# Start here: http://code.tutsplus.com/tutorials/you-dont-know-anything-about-regular-expressions-a-complete-guide--net-7869
#
# 3. Iterate through the string one character at a time.
# You can do this using String#each_char, like so
#
#  contents.each_char do |char|
#    # logic goes here
#  end
#
# This is tedious but instructive.
