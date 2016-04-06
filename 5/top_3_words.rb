



def top_3_words(text)


  
  words = text.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ")
  word_occurences = { }
  words.each do |word|
    if word_occurences[word]
      word_occurences[word] += 1
    else
      word_occurences[word] = 1
    end
  end
  answer = []

  word_occurences = word_occurences.sort_by{| _key, value | value}.reverse

  (0..word_occurences.size - 1).each do |i|
    if word_occurences[i + 1]
      #the unless statement handles ties
      answer.push(word_occurences[i][0]) unless word_occurences[i][1] == word_occurences[i + 1][1]
    end
    answer.push(word_occurences.last[0]) if word_occurences[i] == word_occurences.last && answer.size < 3
    return answer if answer.size == 3
  end
  answer
end


top_3_words("  //wont won't won't")
# => ["won't", "wont"]