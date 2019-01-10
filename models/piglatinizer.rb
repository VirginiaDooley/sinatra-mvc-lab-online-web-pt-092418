class PigLatinizer
  attr_reader :user_string

  def initialize
    @user_string = user_string
  end

  def piglatinize(user_string)
    #%w is a word array
    vowels = %w{a e i o u}

    user_string.gsub(/(\A|\s)\w+/) do |str|
        str.strip!
      while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
        str += str[0]
        str = str[1..-1]
      end
      str  = ' ' + str + 'ay'
    end.strip
  end

end
