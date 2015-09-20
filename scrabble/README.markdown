## Scrabble

#### Intro
Scrabble is a game where you play words and get points for each letter played. For example, if you play the word "hello", and the letter "h" is worth 4 points, the letter "e" is worth 1 point, the letter "l" is worth 1 point, and the letter "o" is worth 1 point, then you scored 8 points.


#### Answer

This is one acceptable answer to the code for Scrabble.

```ruby
def self.score(word)
  letter_array = word.split('')
  letter_array.map do |letter|
    Scrabble.values[letter.upcase]
  end.reduce(:+)
end

def self.numbers_array(word)
  word.chars.map do |letter|
    self.values[letter.upcase]
  end
end

def self.score_multiplied(word, multiplier)
  word_scores = word.chars.map do |letter|
    self.values[letter.upcase]
  end

  word_scores.zip(multiplier).map do |sub_array|
    sub_array.reduce(:*)
  end.reduce(:+)
end
```
