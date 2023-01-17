require_relative 'translator'
require_relative 'dictionary'

class NightWriter
  attr_accessor :file_in,
                :file_out

  def initialize
    @file_in = ARGV[0]
    @file_out = ARGV[1]
    @translator = Translator.new
  end

  def run
    text_in = File.read(@file_in)
    braille_text = @translator.translate_to_braille(text_in)
    File.write(@file_out, braille_text)
    puts "Created #{@file_out} contains #{text_in.length} characters"
  end
end

# night_writer = NightWriter.new
# night_writer.run
# These two lines must be commented out for tests to run correctly.
