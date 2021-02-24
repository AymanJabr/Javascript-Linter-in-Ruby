require_relative './Issue'

class Syntax < Issue
  def initialize
    @@syntax_issues = 0
    @@final_syntax_string = ''
  end

  def output_to_Issue
    @@no_of_issue += @@syntax_issues
    @@final_outputted_string += @@final_syntax_string
  end

  def camelcase(line, index)
    if line.match(/\S_\S/)
      @@final_syntax_string += "use camelCase for variable names at line #{index} \n"
      @@syntax_issues += 1
    end
  end

  def semi(line, index)
    if line.match(/(\}[^;]|(?<!\{).*)[^;]$/)
      @@final_syntax_string += "; syntax issue at line #{index} \n"
      @@syntax_issues += 1
    end
  end

  def prefer_exponentiation_operator(line, index)
    if line.match(/Math\.pow/)
      @@final_syntax_string += "use ** instead of Math.pow at line #{index} \n"
      @@syntax_issues += 1
    end
  end

  def wrap_regex(line, index)
    if line.match(%r{[^(](?<!https)(/.+/)[^)]})
      @@final_syntax_string += "wrap regex in () at line #{index} \n"
      @@syntax_issues += 1
    end
  end
end
