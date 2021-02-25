require_relative "../lib/Spacing.rb"
require_relative "../lib/Syntax.rb"

spacing = Spacing.new
syntax = Syntax.new

RSpec.describe SpacingTests do
  describe '#get_players' do
    it 'Returns value for the second player' do
      expect(settings.get_players('X')).to eql('O')
    end
  end
  describe '#make_board' do
    it 'Returns an empty board' do
      expect(settings.make_board).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    end
  end
end

RSpec.describe SyntaxTests do
  describe '#get_players' do
    it 'Returns value for the second player' do
      expect(settings.get_players('X')).to eql('O')
    end
  end
  describe '#make_board' do
    it 'Returns an empty board' do
      expect(settings.make_board).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    end
  end
end