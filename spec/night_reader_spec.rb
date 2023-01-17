require './spec/spec_helper'

RSpec.describe NightReader do
  before do
    @night_reader = NightReader.new
    @night_reader.file_in = './braille_test.txt'
    @night_reader.file_out = './message50.txt'
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_reader).to be_a(NightReader)
    end

    it 'has attributes' do
      expect(@night_reader.file_in).to eq('./braille_test.txt')
      expect(@night_reader.file_out).to eq('./message50.txt')
    end
  end
end