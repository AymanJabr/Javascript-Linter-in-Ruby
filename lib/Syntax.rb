require_relative './Issue'

class Syntax < Issue
  def camelcase(line,index)
  
    if line.match(/\S_\S/)
      return "There was an error at line #{index}"
    end
  
  end

  def semi(line,index)
  
    if line.match(/(\}[^;]|(?<!\{).*)[^;]$/)
      return "There was an error at line #{index}"
    end
  
  end

  def prefer_exponentiation_operator(line,index)
  
    if line.match(/Math\.pow/)
      return "There was an error at line #{index}"
    end
  end

  def wrap_regex(line,index)
  
    if line.match(/[^\(](?<!https)(\/.+\/)[^\)]/)
      return "There was an error at line #{index}"
    end

  end
end
