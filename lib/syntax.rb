require_relative './issue'

class Syntax < Issue
  def initialize
    super
    @syntax_issues = 0
    @final_syntax_string = ''
  end

  # rubocop:disable Style/ClassVars
  def output_to_issue
    @@no_of_issues += @syntax_issues
    @@final_outputted_string += "\t #{@syntax_issues} SYNTAX Issues detected: \n" + @final_syntax_string
  end

  # rubocop:enable Style/ClassVars
  def add_syntax_issue
    @syntax_issues += 1
  end

  def camelcase(line, index)
    return unless line.match(/\S_\S/)

    add_syntax_issue
    @final_syntax_string += "use camelCase for variable names at line #{index} \n"
    "use camelCase for variable names at line #{index} \n"
  end

  def prefer_exponentiation_operator(line, index)
    return unless line.match(/Math\.pow/)

    add_syntax_issue
    @final_syntax_string += "use ** instead of Math.pow at line #{index} \n"
    "use ** instead of Math.pow at line #{index} \n"
  end

  def wrap_regex(line, index)
    return unless line.match(%r{[^(](?<!https)(/.+/)[^)]})

    add_syntax_issue
    @final_syntax_string += "wrap regex in () at line #{index} \n"
    "wrap regex in () at line #{index} \n"
  end
end
