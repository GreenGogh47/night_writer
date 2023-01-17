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
    character_total = text_in.chars.count
    puts "Created #{@file_out} contains #{character_total} characters"
    english_text = @translator.translate_to_braille(text_in)
    File.write(@file_out, english_text)
  end
end

# night_reader = NightReader.new
# night_reader.run
# These two lines must be commented out for tests to run correctly.
