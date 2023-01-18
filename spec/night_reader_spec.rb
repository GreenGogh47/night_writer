require './spec/spec_helper'

RSpec.describe NightReader do
  before do
    @night_reader = NightReader.new
    @night_reader.file_in = './fixture/braille_test.txt'
    @night_reader.file_out = './fixture/english_test.txt'
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_reader).to be_a(NightReader)
    end

    it 'has attributes' do
      expect(@night_reader.file_in).to eq('./fixture/braille_test.txt')
      expect(@night_reader.file_out).to eq('./fixture/english_test.txt')
    end
  end

  describe '#run' do
    it 'will read the correct file' do
      # I didn't figure out how to open a file and delete the contents
      # OF './fixture/english_test.txt'
      # but if that's done manually, the test will still pass.

      @night_reader.run
      expect(File.read('./fixture/english_test.txt')).to match(File.read'./fixture/english_test_backup.txt')
    end
  end
end