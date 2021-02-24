require_relative './Issue'

class Complexity < Issue

  def prefer_exponentiation_operator(line,index)
  
    if line.match(/Math\.pow/)
      return "There was an error at line #{index}"
    end
  end
end
