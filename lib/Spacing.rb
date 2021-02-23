require_relative './Issue'

class Spacing < Issue

  def array_bracket_spacing(line, index)
    if line.include? '['
      if !line.match(/.*\[.+/)
        return "There was an error at line #{index}"
      else
        return nil
      end

    end
    nil
  end


  def block_spacing 
    

end

  def comma_spacing; end

  def no_trailing_spaces; end

  def computed_property_spacing; end

  def func_call_spacing; end

  def semi_spacing; end

  def key_spacing; end

  def keyword_spacing; end

  def spaced_comment; end

  def switch_colon_spacing; end

  def indent; end

  def space_before_blocks; end

  def space_in_parens; end

  def space_infix_ops; end
end
