require_relative '../lib/Syntax'
require_relative '../lib/Spacing'

spacing = Spacing.new
syntax = Syntax.new

RSpec.describe Spacing do
  describe '#array_bracket_spacing' do
    it 'gives [] spacing issues' do
      expect(spacing.array_bracket_spacing("var arr = [ 'foo', 'bar' ];", 0)).to eql("\[ spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.array_bracket_spacing("var arr = ['foo', 'bar'];", 0)).to eql(nil)
    end
  end

  describe '#block_spacing' do
    it 'gives { spacing issues' do
      expect(spacing.block_spacing('function foo() {return true; }', 0)).to eql("\{ spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.block_spacing('function foo() { return true; }', 0)).to eql(nil)
    end
  end

  describe '#comma_spacing' do
    it 'gives , spacing issues' do
      expect(spacing.comma_spacing('var foo = 1 , bar = 2;', 0)).to eql(", spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.comma_spacing('var foo = 1, bar = 2;', 0)).to eql(nil)
    end
  end
end
RSpec.describe Spacing do
  describe '#key_spacing' do
    it 'gives : spacing issues' do
      expect(spacing.key_spacing('var obj = { "foo" :42 };', 0)).to eql(": spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.key_spacing('var obj = { "foo": 42 };', 0)).to eql(nil)
    end
  end

  describe '#keyword_spacing' do
    it 'gives keywords spacing issues' do
      expect(spacing.keyword_spacing('if(foo) {', 0)).to eql("keyword spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.keyword_spacing('if (foo) {', 0)).to eql(nil)
    end
  end

  describe '#indent' do
    it 'gives indentation issues' do
      expect(spacing.indent('      b = c;', 0)).to eql("indentation spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.indent('    b = c;', 0)).to eql(nil)
    end
  end
end
RSpec.describe Spacing do
  describe '#func_call_spacing' do
    it 'gives () spacing issues' do
      expect(spacing.func_call_spacing('fn ();', 0)).to eql("\(\) spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.func_call_spacing('fn();', 0)).to eql(nil)
    end
  end

  describe '#space_before_blocks' do
    it 'gives block spacing issues' do
      expect(spacing.space_before_blocks('if (a){', 0)).to eql("space before \{ issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.space_before_blocks('if (a) {', 0)).to eql(nil)
    end
  end

  describe '#space_in_parens' do
    it 'gives space in () issues' do
      expect(spacing.space_in_parens('foo( );', 0)).to eql("unecessary space inside parenthesis issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.space_in_parens('foo();', 0)).to eql(nil)
    end
  end
end
RSpec.describe Spacing do
  describe '#computed_property_spacing' do
    it 'gives spacing issues inside []' do
      expect(spacing.computed_property_spacing('obj[foo ]', 0)).to eql("\[\] spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.computed_property_spacing('obj[foo]', 0)).to eql(nil)
    end
  end
  describe '#semi_spacing' do
    it 'gives ; spacing issues' do
      expect(spacing.semi_spacing('var foo ;', 0)).to eql("; spacing issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.semi_spacing('var foo;', 0)).to eql(nil)
    end
  end
  describe '#no_trailing_spaces' do
    it 'gives trailing spaces issues' do
      expect(spacing.no_trailing_spaces('var foo = 0;   ', 0)).to eql("trailing space issue at line 0 \n")
    end

    it 'returns nil' do
      expect(spacing.no_trailing_spaces('var foo = 0;', 0)).to eql(nil)
    end
  end
end
RSpec.describe Syntax do
  describe '#camelcase' do
    it 'gives camelcase syntax issues' do
      expect(syntax.camelcase('var my_favorite_color = "#112C85";',
                              0)).to eql("use camelCase for variable names at line 0 \n")
    end

    it 'returns nil' do
      expect(syntax.camelcase('var myFavoriteColor = "#112C85";', 0)).to eql(nil)
    end
  end

  describe '#prefer_exponentiation_operator' do
    it 'gives Math.pow syntax issues' do
      expect(syntax.prefer_exponentiation_operator('const foo = Math.pow(2, 8);',
                                                   0)).to eql("use ** instead of Math.pow at line 0 \n")
    end

    it 'returns nil' do
      expect(syntax.prefer_exponentiation_operator('const foo = 2**8;', 0)).to eql(nil)
    end
  end

  describe '#wrap_regex' do
    it 'gives regex syntax issues' do
      expect(syntax.wrap_regex('return /foo/.test("bar");', 0)).to eql("wrap regex in () at line 0 \n")
    end

    it 'returns nil' do
      expect(syntax.wrap_regex('return (/foo/).test("bar");', 0)).to eql(nil)
    end
  end
end
