require "alxtz_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    letter_regex = /[a-zA-Z]/i

    the_letters = []

    self.chars.each do |character|
      if (character.match(letter_regex))
        the_letters << character
      end
    end

    the_letters.join
  end

  private
    def processed_content
      self.letters.downcase
    end
end
