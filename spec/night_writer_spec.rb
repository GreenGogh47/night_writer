require './lib/night_writer'

RSpec.describe Budget do
  before do
    @night_writer = NightWriter.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@night_writer).to be_a(NightWriter)
    end
    
    it 'has attributes' do

    end
  end
end