class PigLatinizer < Sinatra::Base
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = text.split(" ")
    words.count
  end

  def translate_word(word)
    # Consonants
    word.concat(word.slice!(/^[^aeiou]*/i || ""))
    # Vowels
    word.gsub!(/y$/, "yn") or word.gsub!(/([aeiou])$/, '\1y')
    # Capitalized Words
    word.capitalize! if word.downcase!
    # Ending
   word += 'ay'
  end

end
