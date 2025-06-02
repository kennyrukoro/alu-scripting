#!/usr/bin/env ruby

if ARGV.empty?
  puts "Usage: #{$0} 'log_entry'"
  exit 1
end

log_entry = ARGV[0]

# More robust pattern matching that:
# 1. Handles cases where fields might be in different orders
# 2. Verifies we're looking at an SMS transaction line
# 3. Better handles malformed input

# First check if this looks like an SMS transaction line
unless log_entry.include?('SMS [SMSC:')
  puts "Error: Not an SMS transaction log entry"
  exit 1
end

# Extract fields using more precise patterns
sender = log_entry[/\[from:([^\]]+)\]/, 1]
receiver = log_entry[/\[to:([^\]]+)\]/, 1]
flags = log_entry[/\[flags:([^\]]+)\]/, 1]

if sender && receiver && flags
  # Remove any extra spaces that might be present
  sender = sender.strip
  receiver = receiver.strip
  flags = flags.strip
  
  puts "#{sender},#{receiver},#{flags}"
else
  puts "Error: Could not parse all required fields from the log entry"
  puts "Parsed values - sender: #{sender || 'nil'}, receiver: #{receiver || 'nil'}, flags: #{flags || 'nil'}"
  exit 1
end
