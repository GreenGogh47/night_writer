require './spec/spec_helper'

RSpec.describe NightReader do
  before do
    @night_reader = NightReader.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_reader).to be_a(NightReader)
    end

    it 'has attributes' do
      expect(@night_reader.file_in).to eq(ARGV[0])
      expect(@night_reader.file_out).to eq(ARGV[1])
    end
  end
end