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
    it 'translates and' do
      # look up methods to make sure that message50 is blank when I start
      # the previous test run could have populated that fixture file
      # call @night_reader.run
      # from there we should be able to open message50
      # verify it contains the translated message
    end
  end
end