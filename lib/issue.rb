class Issue
  # rubocop:disable Style/ClassVars
  def initialize
    @@no_of_issues = 0
    @@final_outputted_string = ''
  end

  # rubocop:disable Style/GuardClause
  def final_string
    if @@no_of_issues.zero?
      return 'No Issues detected'
    else
      @@final_outputted_string += "\n#{@@no_of_issues} Issues detected"
    end

    nil
  end
  # rubocop:enable Style/GuardClause

  def output_final_string
    @@final_outputted_string
  end

  def number_of_issues(_string)
    @@no_of_issues
  end
  # rubocop:enable Style/ClassVars
end
