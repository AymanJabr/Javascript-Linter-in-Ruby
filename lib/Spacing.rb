require_relative './Issue'

class Spacing < Issue

  def array_bracket_spacing(line, index)
    if line.include? '['
      if !line.match(/.*\[.+/)
        return "There was an error at line #{index}"
     
      end

    end
    nil
  end


  def block_spacing(line, index) 
    if (line.include? '{' or line.include? '}') then
        multiple_mistakes = ""
      if line.match(/.*\{[^ ].*/)  then 
        multiple_mistakes += "There was an error at line #{index}"
      end
      if line.match(/.*[^ ]\}.*/) then
        multiple_mistakes += "There was an error at line #{index}"
      end
      if multiple_mistakes != ""  then
        return multiple_mistakes
      end
    end
    nil

    end

  def comma_spacing(line, index)
  
    if (line.include? ',' ) then
      if line.match(/.* ,/) or line.match(/,[^ ]/)  then 
        return "There was an error at line #{index}"
      end
      
    end
    nil  
  
  
  end

  def no_trailing_spaces(line,index)
  
    if line.match(/ +$/) then
      return "There was an error at line #{index}"
    end
  
  end

  def computed_property_spacing(line,index)
  
    if line.match(/\[ .*\]/) or line.match(/\[.* \]/)
      return "There was an error at line #{index}"
    end
  end

  def func_call_spacing(line,index)
    if line.match(/(?<!if|return|for) \(.*\)/) or line.match(/^\(.*\)/)
      return "There was an error at line #{index}"
    end
  
  end

  def semi_spacing(line,index)
    if (line.include? ';' ) then
      if line.match(/.* ;/) or line.match(/;[^ ]/)  then 
        return "There was an error at line #{index}"
      end
      
    end
    nil 
    
  
  end

  def key_spacing(line,index) 
  
    if (line.include? ':' ) then
      if line.match(/.* :/) or line.match(/(?<!https):[^ ]/)  then 
        return "There was an error at line #{index}"
      end
      
    end
    nil 
  
  end

  def keyword_spacing(line,index)
      
            if line.match? /(^ |.+[^ ])(\bas\b|\basync\b|\bbreak\b|\bcase\b|\bcatch\b|\bclass\b|\bconst\b|\bcontinue\b|\bdebugger\b|\bdefault\b|\bdelete\b|\bdo\b|\belse\b|\bexport\b|\bextends\b|\bfinally\b|\bfor\b|\bfrom\b|\bfunction\b|\bget\b|\bif\b|\bimport\b|\bin\b|\binstanceof\b|\blet\b|\bnew\b|\bof\b|\breturn\b|\bset\b|\bstatic\b|\bsuper\b|\bswitch\b|\bthis\b|\bthrow\b|\btry\b|\btypeof\b|\bvar\b|\bvoid\b|\bwhile\b|\bwith\b|\byield\b)/ or line.match? /(\bas\b|\basync\b|\bbreak\b|\bcase\b|\bcatch\b|\bclass\b|\bconst\b|\bcontinue\b|\bdebugger\b|\bdefault\b|\bdelete\b|\bdo\b|\belse\b|\bexport\b|\bextends\b|\bfinally\b|\bfor\b|\bfrom\b|\bfunction\b|\bget\b|\bif\b|\bimport\b|\bin\b|\binstanceof\b|\blet\b|\bnew\b|\bof\b|\breturn\b|\bset\b|\bstatic\b|\bsuper\b|\bswitch\b|\bthis\b|\bthrow\b|\btry\b|\btypeof\b|\bvar\b|\bvoid\b|\bwhile\b|\bwith\b|\byield\b)(\S.*| $)/ then
              return "There was an error at line #{index}"
            end


  
  end

  def indent(line,index)
    
      if !line.match(/(^$|^\S|^(    )+\S)/)  then 
        return "There was an error at line #{index}"
      end
      
    ()
     
  
  end

  def space_before_blocks(line,index)
  
    if line.match(/.?\S{/)
        return "There was an error at line #{index}"
    end

  
  end

  def space_in_parens(line,index)
  
    if line.match(/\( /) or line.match(/ \)/)
        return "There was an error at line #{index}"
    end
  
  end
end
