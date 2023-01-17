require 'spec_helper'

RSpec.describe Translator do

  before do
    @translator = Translator.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@translator).to be_a(Translator)
    end
  end

  describe '#translate' do
    it "translates a character from english to braille" do
      expect(@translator.translate("a")).to eq(["0.", "..", ".."])
    end
  end
end