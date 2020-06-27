require 'set'

def check_spelling(sentence:)
  if sentence.length > 1
    words = format(sentence: sentence)
    corrected = check(words: words)
  elsif sentence == "" || " "
    raise StandardError.new "This is an error"
  end
  corrected.join(" ")
end

# support routine to split up a sentence
def format(sentence:)
  words = sentence.split(" ")
end

# support routine to check supplied sentence against a dictionary
# returns aray of corrected words
def check(words:)
  dictionary = Set.new(["hello", "my", "name", "is", "orange"])
  corrected = []
  words.each do | word |
    dictionary.include?(word) ? corrected.push(word) : corrected.push("~#{word}~")
  end
  corrected
end
