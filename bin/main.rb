require_relative '../lib/issue'
require_relative '../lib/spacing'
require_relative '../lib/syntax'

issue = Issue.new
spacing = Spacing.new
syntax = Syntax.new

entire_file = File.read('./mainTest.js')

line_by_line = entire_file.split("\n")

line_by_line.each_with_index do |line, line_index|
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
  syntax.prefer_exponentiation_operator(line, current_line)
end

syntax.output_to_issue
spacing.output_to_issue

issue.final_string
puts issue.output_final_string
