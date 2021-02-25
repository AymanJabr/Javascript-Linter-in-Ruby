require_relative './Issue'

class Spacing < Issue
  def initialize
    @@spacing_issues = 0
    @@final_spacing_string = ''
  end

  def add_spacing_issue
    @@spacing_issues += 1
  end

  def output_to_Issue
    @@no_of_issue += @@spacing_issues
    @@final_outputted_string += @@final_spacing_string
  end

  def array_bracket_spacing(line, index)
    if line.match?(/\[/) && !line.match(/.*\[.+/)
      add_spacing_issue
      return "\[ spacing issue at line #{index} \n"
    end

    nil
  end

  def block_spacing(line, index)
    if line.include? '{' or line.include? '}'
      multiple_mistakes = ''
      multiple_mistakes += "\{ spacing issue at line #{index} \n" if line.match(/.*\{[^ ].*/)
      multiple_mistakes += "\{ spacing issue at line #{index} \n" if line.match(/.*[^ ]\}.*/)
      if multiple_mistakes != ''
        add_spacing_issue
        return multiple_mistakes
      end
    end
    nil
  end

  def comma_spacing(line, index)
    if line.match( /,/) && (line.match(/.* ,/) or line.match(/,[^ ]/))
      add_spacing_issue
      return ", spacing issue at line #{index} \n"
    end
    nil
  end

  def no_trailing_spaces(line, index)
    if line.match(/ +$/)
      add_spacing_issue
      return "trailing space issue at line #{index} \n"
    end
    nil
  end

  def computed_property_spacing(line, index)
    if line.match(/\[ .*\]/) or line.match(/\[.* \]/)
      add_spacing_issue
      return "\[\] spacing issue at line #{index} \n"
    end
    nil
  end

  def func_call_spacing(line, index)
    if line.match(/(?<!if|return|for) \(.*\)/) or line.match(/^\(.*\)/)
      add_spacing_issue
      return "\(\) spacing issue at line #{index} \n"
    end
    nil
  end

  def semi_spacing(line, index)
    if line.match(/;/) && (line.match(/.* ;/) or line.match(/;[^ ]/))
      add_spacing_issue
      return "; spacing issue at line #{index} \n"
    end

    nil
  end

  def key_spacing(line, index)
    if line.match(/:/) && (line.match(/.* :/) or line.match(/(?<!https):[^ ]/))
      add_spacing_issue
      return ": spacing issue at line #{index} \n"
    end

    nil
  end

  # rubocop:disable Layout/LineLength

  def keyword_spacing(line, index)
    if line.match?(/(^ |.+[^ ])(\bas\b|\basync\b|\bbreak\b|\bcase\b|\bcatch\b|\bclass\b|\bconst\b|\bcontinue\b|\bdebugger\b|\bdefault\b|\bdelete\b|\bdo\b|\belse\b|\bexport\b|\bextends\b|\bfinally\b|\bfor\b|\bfrom\b|\bfunction\b|\bget\b|\bif\b|\bimport\b|\bin\b|\binstanceof\b|\blet\b|\bnew\b|\bof\b|\breturn\b|\bset\b|\bstatic\b|\bsuper\b|\bswitch\b|\bthis\b|\bthrow\b|\btry\b|\btypeof\b|\bvar\b|\bvoid\b|\bwhile\b|\bwith\b|\byield\b)/) or line.match?(/(\bas\b|\basync\b|\bbreak\b|\bcase\b|\bcatch\b|\bclass\b|\bconst\b|\bcontinue\b|\bdebugger\b|\bdefault\b|\bdelete\b|\bdo\b|\belse\b|\bexport\b|\bextends\b|\bfinally\b|\bfor\b|\bfrom\b|\bfunction\b|\bget\b|\bif\b|\bimport\b|\bin\b|\binstanceof\b|\blet\b|\bnew\b|\bof\b|\breturn\b|\bset\b|\bstatic\b|\bsuper\b|\bswitch\b|\bthis\b|\bthrow\b|\btry\b|\btypeof\b|\bvar\b|\bvoid\b|\bwhile\b|\bwith\b|\byield\b)(\S.*| $)/)
      add_spacing_issue
      return "keyword spacing issue at line #{index} \n"
    end
  end
  # rubocop:enable Layout/LineLength

  def indent(line, index)
    unless line.match(/(^$|^\S|^(    )+\S)/)
      add_spacing_issue
      return "indentation spacing issue at line #{index} \n"
    end

    ()
  end

  def space_before_blocks(line, index)
    if line.match(/.?\S{/)
      add_spacing_issue
      return "space before \{ issue at line #{index} \n"
    end
    nil
  end

  def space_in_parens(line, index)
    if line.match(/\( /) or line.match(/ \)/)
      add_spacing_issue
      return "unecessary space inside parenthesis issue at line #{index} \n"
    end
    nil
  end
end
