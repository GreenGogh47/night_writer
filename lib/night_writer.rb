class NightWriter
  attr_accessor :file_in,
                :file_out

  def initialize
    @file_in = ARGV[0]
    @file_out = ARGV[1]
  end
end