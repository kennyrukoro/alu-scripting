#!/usr/bin/env ruby
# This script accepts one argument and passes it to a regular expression matching method
# The regular expression should match patterns without using square brackets

if ARGV.length != 1
  puts "Please provide exactly one argument."
  exit
end

input = ARGV[0]
regex = /^h{3}$/

if input.match(regex)
  puts input
else
  puts ""
end
