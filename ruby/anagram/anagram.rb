require 'pry'

class Anagram
  attr_reader :incoming_word

  def initialize(incoming_word)
    @incoming_word = incoming_word.downcase
  end

  def match(list)
    list.select do |word|
      scramble_and_match(word)
    end
  end

  def scramble_and_match(word)
    unless word.downcase == incoming_word.downcase
      word.downcase.chars.sort == incoming_word.chars.sort && word != incoming_word
    end
  end
end
