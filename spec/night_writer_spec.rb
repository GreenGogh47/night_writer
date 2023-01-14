require 'simplecov'
SimpleCov.start

require './lib/night_writer'

RSpec.describe NightWriter do
  before do
    @night_writer = NightWriter.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
    end

    it 'has attributes' do
      expect(@file_in).to eq(ARGV[0])
      expect(@file_out).to eq(ARGV[1])
    end
  end
end