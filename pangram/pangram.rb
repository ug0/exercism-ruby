class Pangram
  ALPHABETS = ('a'..'z').to_a

  def self.pangram?(phrase)
    (phrase.downcase.chars & ALPHABETS).length == 26
  end
end

module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end