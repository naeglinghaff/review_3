require 'set'

def spell_checker(words:)
  if words.length > 1
    sentence = format(words: words)
    corrected = check(sentence: sentence)
  elsif words == "" || " "
    raise StandardError.new "This is an error"
  end
  corrected.join(" ")
end

# support routine to split up a sentence
def format(words:)
  sentence = words.split(" ")
end

# support routine to check supplied sentence against a dictionary
# returns aray of corrected words
def check(sentence:)
  dictionary = Set.new(["hello", "my", "name", "is", "orange"])
  corrected = []
  sentence.each do | word |
    dictionary.include?(word) ? corrected.push(word) : corrected.push("~#{word}~")
  end
  corrected
end
