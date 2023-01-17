require './spec/spec_helper'

RSpec.describe NightWriter do
  before do
    @night_writer = NightWriter.new
    @night_writer.file_in = './fixture/english_test.txt'
    @night_writer.file_out = './fixture/braille_test.txt'
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
    end

    it 'has attributes' do
      expect(@night_writer.file_in).to eq('./fixture/english_test.txt')
      expect(@night_writer.file_out).to eq('./fixture/braille_test.txt')
    end
  end
end