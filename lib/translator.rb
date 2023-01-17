require_relative 'dictionary'

class Translator < Dictionary
  attr_accessor

  def initialize
    super
  end

  def translate_to_braille(text)
    # Converted to downcase for now.
    braille_array = text.downcase.each_char.map do |character|
      text_to_braille[character]
    end
    split_by_40 = braille_array.each_slice(40).map do |row|
      row.transpose.map(&:join).join("\n")
    end.join("\n\n")
  end


end