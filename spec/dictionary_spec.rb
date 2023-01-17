require './spec/spec_helper'

RSpec.describe Dictionary do

  before do
    @dictionary = Dictionary.new
  end

  describe '#letters' do
    it 'returns the correct braille code for each letter' do
      expect(@dictionary.text_to_braille["a"]).to eq(["0.", "..", ".."])
      expect(@dictionary.text_to_braille["l"]).to eq(["0.", "0.", "0."])
    end
  end
end