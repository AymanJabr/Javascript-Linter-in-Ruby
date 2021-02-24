require_relative './Issue'

class Spacing < Issue
  def initialize
    @@spacing_issues = 0
    @@final_spacing_string = ''
  end

  def output_to_Issue
    @@no_of_issue += @@spacing_issues
    @@final_outputted_string += @@final_spacing_string
  end

  def array_bracket_spacing(line, index)
    if line.include? '[' && !line.match(/.*\[.+/)
      @@final_spacing_string += "\[ spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end

    nil
  end

  def block_spacing(line, index)
    if line.include? '{' or line.include? '}'
      multiple_mistakes = ''
      multiple_mistakes += "\{ spacing issue at line #{index} \n" if line.match(/.*\{[^ ].*/)
      multiple_mistakes += "\{ spacing issue at line #{index} \n" if line.match(/.*[^ ]\}.*/)
      if multiple_mistakes != ''
        @@final_spacing_string += multiple_mistakes
        @@spacing_issues += 1
      end
    end
    nil
  end

  def comma_spacing(line, index)
    if line.include? ',' && (line.match(/.* ,/) or line.match(/,[^ ]/))
      @@final_spacing_string += ", spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end
    nil
  end

  def no_trailing_spaces(line, index)
    if line.match(/ +$/)
      @@final_spacing_string += "trailing space issue at line #{index} \n"
      @@spacing_issues += 1
    end
    nil
  end

  def computed_property_spacing(line, index)
    if line.match(/\[ .*\]/) or line.match(/\[.* \]/)
      @@final_spacing_string += "\[\] spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end
    nil
  end

  def func_call_spacing(line, index)
    if line.match(/(?<!if|return|for) \(.*\)/) or line.match(/^\(.*\)/)
      @@final_spacing_string += "\(\) spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end
    nil
  end

  def semi_spacing(line, index)
    if line.include? ';' && (line.match(/.* ;/) or line.match(/;[^ ]/))
      @@final_spacing_string += "; spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end

    nil
  end

  def key_spacing(line, index)
    if line.include? ':' && (line.match(/.* :/) or line.match(/(?<!https):[^ ]/))
      @@final_spacing_string += ": spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end

    nil
  end

  # rubocop:disable Layout/LineLength

  def keyword_spacing(line, index)
    if line.match?(/(^ |.+[^ ])(\bas\b|\basync\b|\bbreak\b|\bcase\b|\bcatch\b|\bclass\b|\bconst\b|\bcontinue\b|\bdebugger\b|\bdefault\b|\bdelete\b|\bdo\b|\belse\b|\bexport\b|\bextends\b|\bfinally\b|\bfor\b|\bfrom\b|\bfunction\b|\bget\b|\bif\b|\bimport\b|\bin\b|\binstanceof\b|\blet\b|\bnew\b|\bof\b|\breturn\b|\bset\b|\bstatic\b|\bsuper\b|\bswitch\b|\bthis\b|\bthrow\b|\btry\b|\btypeof\b|\bvar\b|\bvoid\b|\bwhile\b|\bwith\b|\byield\b)/) or line.match?(/(\bas\b|\basync\b|\bbreak\b|\bcase\b|\bcatch\b|\bclass\b|\bconst\b|\bcontinue\b|\bdebugger\b|\bdefault\b|\bdelete\b|\bdo\b|\belse\b|\bexport\b|\bextends\b|\bfinally\b|\bfor\b|\bfrom\b|\bfunction\b|\bget\b|\bif\b|\bimport\b|\bin\b|\binstanceof\b|\blet\b|\bnew\b|\bof\b|\breturn\b|\bset\b|\bstatic\b|\bsuper\b|\bswitch\b|\bthis\b|\bthrow\b|\btry\b|\btypeof\b|\bvar\b|\bvoid\b|\bwhile\b|\bwith\b|\byield\b)(\S.*| $)/)
      @@final_spacing_string += "keyword spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end
  end
  # rubocop:enable Layout/LineLength

  def indent(line, index)
    unless line.match(/(^$|^\S|^(    )+\S)/)
      @@final_spacing_string += "indentation spacing issue at line #{index} \n"
      @@spacing_issues += 1
    end

    ()
  end

  def space_before_blocks(line, index)
    if line.match(/.?\S{/)
      @@final_spacing_string += "space before \{ issue at line #{index} \n"
      @@spacing_issues += 1
    end
    nil
  end

  def space_in_parens(line, index)
    if line.match(/\( /) or line.match(/ \)/)
      @@final_spacing_string += "unecessary space inside parenthesis issue at line #{index} \n"
      @@spacing_issues += 1
    end
    nil
  end
end
