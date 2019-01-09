class PigLatinizer
  attr_reader :word

  def initialize
    @word = word
  end

  def piglatinize(word)
    #need to account for double consonants
    first_letter = word.slice!(0)
    #this accounts for vowels
    if first_letter.match(/[aAeEiIoOuU]/)
      pgword = word + first_letter + 'way'
    else
      pgword = word + first_letter + 'ay'
    end

  end

end
