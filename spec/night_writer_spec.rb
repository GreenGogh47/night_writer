require './spec/spec_helper'

RSpec.describe NightWriter do
  before do
    @night_writer = NightWriter.new
    @night_writer.file_in = './message.txt'
    @night_writer.file_out = './braille_test.txt'
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
    end

    it 'has attributes' do
      expect(@night_writer.file_in).to eq('./message.txt')
      expect(@night_writer.file_out).to eq('./braille_test.txt')
    end
  end
end