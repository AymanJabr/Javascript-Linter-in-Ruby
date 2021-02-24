# require_relative '../lib/Issue.rb' maybe we don't need this
require_relative '../lib/Brackets'
require_relative '../lib/Complexity'
require_relative '../lib/Line'
require_relative '../lib/Spacing'
require_relative '../lib/Syntax'

spacing = Spacing.new
brackets = Brackets.new
syntax = Syntax.new
complexity = Complexity.new
line_issue = Line.new

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
  



# if spacing.comma_spacing(line, current_line) != nil then
  
# end


# puts spacing.array_bracket_spacing(line, current_line)
# puts spacing.block_spacing(line, current_line)
# puts spacing.comma_spacing(line, current_line)
# puts spacing.no_trailing_spaces(line,current_line)
# puts spacing.computed_property_spacing(line, current_line)
# puts spacing.func_call_spacing(line,current_line)
# puts spacing.semi_spacing(line,current_line)
# puts spacing.key_spacing(line,current_line)
# puts spacing.keyword_spacing(line,current_line)
# puts spacing.indent(line,current_line)
# puts spacing.space_before_blocks(line,current_line)
# puts spacing.space_in_parens(line,current_line)
# puts brackets.wrap_regex(line,current_line)
# puts syntax.camelcase(line,current_line)
# puts syntax.semi(line,current_line)


end

# Here we check methods that need to take in multiple lines
puts line_issue.eol_last(entire_file)