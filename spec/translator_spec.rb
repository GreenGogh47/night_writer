require 'spec_helper'

RSpec.describe Translator do

  before do
    @translator = Translator.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@translator).to be_a(Translator)
    end

    # How do I test if it's properly inheriting the prior class?
  end

  describe '#translate' do
    it "translates a character from english to braille" do
      expect(@translator.translate("a")).to eq("0.\n..\n..")
      expect(@translator.translate("b")).to eq("0.\n0.\n..")
      expect(@translator.translate("ab")).to eq("0.0.\n..0.\n....")
    end
  end
end