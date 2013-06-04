File.open("words", "r").each do |word|
  @word = word.chomp
  Word.create(word: @word)
end
