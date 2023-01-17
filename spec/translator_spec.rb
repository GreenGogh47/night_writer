require 'spec_helper'

RSpec.describe Translator do

  before do
    @translator = Translator.new
    @input = File.read('./message50.txt')
    @output = File.read('./braille.txt')
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

  describe '#translate' do
    it "translates a character from english to braille" do
      expect(@translator.translate_to_braille(@input)).to eq(@output)
      expect(@translator.translate_to_braille("a")).to eq("0.\n..\n..")
      expect(@translator.translate_to_braille("b")).to eq("0.\n0.\n..")
      expect(@translator.translate_to_braille("ab")).to eq("0.0.\n..0.\n....")
    end
  end
end