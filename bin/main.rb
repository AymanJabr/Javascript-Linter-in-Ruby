# require_relative '../lib/Issue.rb' maybe we don't need this
require_relative '../lib/Brackets'
require_relative '../lib/Complexity'
require_relative '../lib/Line'
require_relative '../lib/Spacing'
require_relative '../lib/Syntax'

spacing = Spacing.new

entire_file = File.read('./mainTest.js')
line_by_line = entire_file.split("\n")
line_by_line_with_n = line_by_line
# This array makes sure that each line is ended with a "\n"
line_by_line_with_n.map do |line|
  line += "\n"
end

# Here we test all the methods that are checked in one line
line_by_line_with_n.each_with_index do |line, line_index|
  current_line = line_index + 1
  
#   puts spacing.array_bracket_spacing(line, current_line)
puts 

end

# Here we check methods that need to take in multiple lines
