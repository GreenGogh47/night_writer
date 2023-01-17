require 'dictionary'

class Translator < Dictionary
  attr_accessor

  def initialize
    super
  end

  def translate(text)
    # Converted to downcase for now.
    braille_array = text.downcase.each_char.map do |character|
       dictionary[character]
    end
    braille_array.transpose.map(&:join).join("\n")
  end
end