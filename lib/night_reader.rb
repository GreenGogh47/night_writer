require_relative 'translator'
require_relative 'dictionary'

class NightReader
  attr_accessor :file_in,
                :file_out

  def initialize
    @file_in = ARGV[0]
    @file_out = ARGV[1]
    @translator = Translator.new
  end

  def run
    text_in = File.read(@file_in)
    english_text = @translator.translate_to_braille(text_in)
    # english_text = text_in USED FOR READ/WRITE TEST
    File.write(@file_out, english_text)
    puts "Created #{@file_out} contains #{english_text.length} characters"
  end
end

# night_reader = NightReader.new
# night_reader.run
# These two lines must be commented out for tests to run correctly.
