require_relative './Issue'

class Line < Issue
  def eol_last; end

  def no_multiple_empty_lines; end

  def function_call_argument_newline; end

  def function_paren_newline; end

  def lines_between_class_memebers; end

  def one_var; end
end
