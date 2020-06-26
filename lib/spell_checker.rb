def spell_checker(words)
  dictionary = ["hello", "my", "name", "is", "orange"]
  correct = []
  if words.length > 1
    sentence = words.split(" ")
    sentence.each do | word |
      dictionary.include?(word) ? correct.push(word) : correct.push("~#{word}~")
    end
  elsif words == "" || " "
    raise StandardError.new "This is an error"
  end
  correct.join(" ")
end
