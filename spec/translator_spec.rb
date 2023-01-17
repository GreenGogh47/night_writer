require 'spec_helper'

RSpec.describe Translator do

  before do
    @translator = Translator.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@translator).to be_a(Translator)
    end

    it 'has attributes' do
      expect(@file_in).to eq(ARGV[0])
      expect(@file_out).to eq(ARGV[1])
    end

    # How do I test if it's properly inheriting the prior class?
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
	end
end