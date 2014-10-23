# Method name: find_links
# Inputs:      A website URL
# Returns:     An array of all link URLs on the input website
# Prints:      Nothing

require 'open-uri'
require 'nokogiri'

# Note #1
# You'll need to install the nokogiri gem if you haven't, yet.  Run this
# from the command line to install it:
#
#   gem install nokogiri
#
# Nokogiri can be difficult to install, so if this doesn't work let us know!
# The installation messages can also be intimidating, but here's Jesse
# installing nokogiri on his laptop running OS X 10.9 (Mavericks)
# http://cl.ly/image/163i3r290m3D

# Here are some tutorials on how to use Nokogiri to do this. Please email us
# if you're confused about anything in the tutorials.
#
#   http://ruby.bastardsbook.com/chapters/html-parsing/
#   http://lostechies.com/rodpaddock/2011/04/11/hacking-websites-with-ruby-and-nokogiri/

def find_links(url)
  # This should return an array of all links at the given URL
  # Can be done using Nokogiri's css OR xpath methods
  #links = page.xpath('//a[@href]').map
  #links = page.xpath('//@href').map(&:value)
  links = []
  doc = Nokogiri::HTML(open(url))
  doc.css('a').each do |a_tag| #doc.css('a') is Nokogiri::XML::NodeSet
    href_str = String(a_tag['href']) # converting to String in case if it is NilClass type
    if href_str.include? "http"
      links.push(a_tag['href'])
    end  
  end
  links
end


find_links("http://www.cnn.com/").each do |url|
  puts url
  puts "================="
end
