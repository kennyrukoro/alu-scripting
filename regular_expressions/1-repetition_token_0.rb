if ARGV.length != 1
  puts "Please provide exactly one argument"
  exit
end

input = ARGV[0]

# More precise regular expression that matches exactly:
# - Number followed by dot and space
# - The exact text "Repetition Token" (note the typo in the example)
# - Space, #, and number at the end
if input.match(/^\d+\. Repetition Token #\d+$/)
  puts "Input matches the exact pattern"
else
  puts "Input does not match the exact pattern"
end
