#!/usr/bin/env ruby
# This script accepts one argument and passes it to a regular expression matching method
# The regular expression must match the first token repeated later in the string

if ARGV.length != 1
  puts "Usage: #{$0} <string>"
  exit 1
end

input_string = ARGV[0]
regex = /^(\S+).*\1$/

if input_string.match(regex)
  puts input_string
else
  puts ""
end
