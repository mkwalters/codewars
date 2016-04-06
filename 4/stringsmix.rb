
def letter_counter(str, location)
  letters = { }
  str.each_char do |letter|
    if letter.ord >= 97 && letter.ord <= 122
      if letters[letter]
        letters[letter][:count] += 1
      else
        letters[letter] = {:count => 1, :location => location}
      end
    end

  end

  letters
  
end





def mix(s1, s2)
  s1letters = letter_counter(s1, 1)
  s2letters = letter_counter(s2, 2)
  info = s1letters.merge(s2letters).sort_by { |key, value| value[:count] }.reverse
  #info.reverse_each do |letter|

end

puts mix("aaa bb a", "___99000 aaa ")




# puts "a".ord
# puts "z".ord