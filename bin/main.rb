# require_relative '../lib/Issue.rb' maybe we don't need this

require_relative '../lib/Issue'
require_relative '../lib/Spacing'
require_relative '../lib/Syntax'

issue = Issue.new
spacing = Spacing.new
syntax = Syntax.new

# Add your files instead of './mainTest.js'
entire_file = File.read('./mainTest.js')

line_by_line = entire_file.split("\n")
line_by_line_with_n = line_by_line
# This array makes sure that each line is ended with a "\n"
line_by_line_with_n.map do |line|
  line += "\n"
end

line_by_line_with_n.each_with_index do |line, line_index|
  current_line = line_index + 1

  spacing.array_bracket_spacing(line, current_line)
  spacing.block_spacing(line, current_line)
  spacing.comma_spacing(line, current_line)
  spacing.no_trailing_spaces(line, current_line)
  spacing.computed_property_spacing(line, current_line)
  spacing.func_call_spacing(line, current_line)
  spacing.semi_spacing(line, current_line)
  spacing.key_spacing(line, current_line)
  spacing.keyword_spacing(line, current_line)
  spacing.indent(line, current_line)
  spacing.space_before_blocks(line, current_line)
  spacing.space_in_parens(line, current_line)
  syntax.wrap_regex(line, current_line)
  syntax.camelcase(line, current_line)
  syntax.semi(line, current_line)
  syntax.prefer_exponentiation_operator(line, current_line)
end

syntax.output_to_Issue
spacing.output_to_Issue

issue.final_string
puts issue.output_final_string
