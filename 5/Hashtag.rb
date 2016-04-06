def generateHashtag(str)
  return false if str.empty?
  hashtag = str.split(" ").each{ |word| word[0] = word[0].upcase}.join.insert(0,"\#")
  return false if str.length > 140
  hashtag
end