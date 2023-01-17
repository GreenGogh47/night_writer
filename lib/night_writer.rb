class NightWriter
  attr_accessor :file_in,
                :file_out

  def initialize
    @file_in = ARGV[0]
    @file_out = ARGV[1]
  end

  def run
    text_in = File.read(@file_in)
    character_total = text_in.chars.count
    puts "Created #{@file_out} contains #{character_total} characters"
    File.write(@file_out, text_in)
  end
end

night_writer = NightWriter.new
night_writer.run
