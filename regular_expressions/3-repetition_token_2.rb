#!/usr/bin/env ruby
# This script matches a regular expression for Repetition Token #2

if ARGV.empty?
  puts "Please provide an input string as an argument."
  exit
end

input = ARGV[0]
regex = /(.)\1/

matches = input.scan(regex)
if matches.any?
  puts matches.join
else
  puts ""
end
