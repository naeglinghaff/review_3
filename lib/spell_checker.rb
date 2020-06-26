def spell_checker(words)
  dictionary = ["hello", "my", "name"]
  correct = []
  if words.length > 1
    sentence = words.split(" ")
    sentence.each do | word |
      dictionary.include?(word) ? correct.push(word) : correct.push("~#{word}~")
    end
  end
  correct.join(" ")
end
