class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(user_word)
   @anagrams = []
  Word.all.each do |word|
    @test_word = word.word
    @sorted_test = @test_word.split("").sort.join.downcase
    if @sorted_test == user_word
      @anagrams << @test_word
    end
  end
  @anagrams
  end
end
