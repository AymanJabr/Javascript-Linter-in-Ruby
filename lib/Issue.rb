class Issue

  def initialize
    @@no_of_issue = 0
    @@final_outputted_string = ""
  end

  def final_string
    if @@no_of_issue == 0 then
      return "No Issues detected"
    else
      @@final_outputted_string += "\n#{@@no_of_issue} Issues detected"
    end
    nil
  end

  def output_final_string
    @@final_outputted_string
  end

  def number_of_issues(_string)
    @@no_of_issue
  end
end
