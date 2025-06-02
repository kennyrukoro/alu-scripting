#!/usr/bin/env ruby
# This script accepts one argument and checks if the first token is repeated later in the string

if ARGV.length != 1
  puts "Usage: #{$0} <string>"
  exit 1
end

input_string = ARGV[0]
regex = /^(\S+).*\1$/

if input_string.match(regex)
  puts input_string
end
