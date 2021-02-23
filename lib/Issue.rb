class Issue
  attr_accessor :no_of_issue

  @@no_of_issue = 0

  # def add_issue
  #     @@no_of_issue++
  # end

  def number_of_issues(_string)
    @@no_of_issue
  end
end
