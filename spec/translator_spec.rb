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

  describe '#translate_to_braille' do
    it "translates a character from english to braille" do
      expect(@translator.translate_to_braille("hello")).to eq("0.0.0.0.0.\n00.00.0..0\n....0.0.0.")
    end
  end

  describe '#translate_from_braille' do
    it 'translates text from braille' do
			expect(@translator.translate_from_braille("0.\n00\n..")).to eq("h")
			expect(@translator.translate_from_braille("0.0.0.0.0.\n00.00.0..0\n....0.0.0.")).to eq("hello")
		end

    it 'will correctly accept braille from multiple lines' do
      # expect(@translator.translate_from_braille("0.0.\n..00\n00..\n\n0.0.\n.000\n0...")).to eq("uhoh")
    end
	end
end