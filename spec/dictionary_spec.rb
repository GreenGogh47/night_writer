require './spec/spec_helper'

RSpec.describe Dictionary do

  before do
    @dictionary = Dictionary.new
  end

  describe '#letters' do
    it 'returns the correct braille code for each letter' do
      expect(@dictionary.dictionary["a"]).to eq(["0.", "..", ".."])
      expect(@dictionary.dictionary["l"]).to eq(["0.", "0.", "0."])
    end
  end
end