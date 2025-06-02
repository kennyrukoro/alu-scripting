#!/usr/bin/env ruby
input = ARGV[0].to_s
puts input.match(/^\d{10}$/) || ''
