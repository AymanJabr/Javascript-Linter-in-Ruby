require_relative './Issue'

class Syntax < Issue
  def initialize
    @@syntax_issues = 0
    @@final_syntax_string = ''
  end

  def output_to_Issue
    @@no_of_issue += @@syntax_issues
    @@final_outputted_string += "\t #{@@syntax_issues} SYNTAX Issues detected: \n" + @@final_syntax_string
  end

  def add_syntax_issue
    @@syntax_issues += 1
  end

  def camelcase(line, index)
    if line.match(/\S_\S/)
      add_syntax_issue
      @@final_syntax_string += "use camelCase for variable names at line #{index} \n"
      return "use camelCase for variable names at line #{index} \n"
    end
  end

  def prefer_exponentiation_operator(line, index)
    if line.match(/Math\.pow/)
      add_syntax_issue
      @@final_syntax_string += "use ** instead of Math.pow at line #{index} \n"
      return "use ** instead of Math.pow at line #{index} \n"
    end
  end

  def wrap_regex(line, index)
    if line.match(%r{[^(](?<!https)(/.+/)[^)]})
      add_syntax_issue
      @@final_syntax_string += "wrap regex in () at line #{index} \n"
      return "wrap regex in () at line #{index} \n"
    end
  end
end
