#!/usr/bin/env ruby
exit if ARGV.empty?
input = ARGV[0]
puts input.match(/^h.n$/) || ''
