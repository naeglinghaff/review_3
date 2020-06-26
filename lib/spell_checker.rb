require 'set'

def spell_checker(words)
  dictionary = ["hello", "name"]
  correctly_spelt = []
  if words.length > 1
    sentence = words.split(" ")
    sentence.each do | word |
      dictionary.include?(word) ? correctly_spelt.push(word) : correctly_spelt.push("~#{word}~")
    end
  else
    sentence = words
  end
  correctly_spelt.join(" ")
end
