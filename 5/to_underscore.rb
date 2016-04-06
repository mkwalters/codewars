

def to_underscore(string)
  return string.to_s if string.class != String
  letters = string.chars
  letters[0] = letters[0].downcase
  letters.map! do |letter|
    if letter.ord >= 65 && letter.ord <= 90 # A.ord => 65, Z.ord => 90
      letter = "_" + letter.downcase
    else
      letter
    end
  end
  letters.join
end

