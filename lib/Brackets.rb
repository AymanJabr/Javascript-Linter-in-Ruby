require_relative './Issue'

class Brackets < Issue
  def brace_style; end

  def comma_dangle; end

  def wrap_regex(line,index)
  
    if line.match(/[^\(](?<!https)(\/.+\/)[^\)]/)
      return "There was an error at line #{index}"
    end

  end
end
