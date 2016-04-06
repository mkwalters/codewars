def triple_double(num1,num2)
  digits1 = num1.to_s.chars.map(&:to_i)
  num1_triples = Set.new
  0.upto(digits1.size - 2) do |i|
    num1_triples.add(digits1[i]) if digits1[i] == digits1[i + 1] && digits1[i] == digits1[ i + 2 ]
    # puts digits1[i]
    # puts digits1[ i + 1]
  end
  digits2 = num2.to_s.chars.map(&:to_i)
  num2_doubles = Set.new
  0.upto(digits2.size - 1) do |i|
    num2_doubles.add(digits2[i]) if digits2[i] == digits2[i + 1]
  end
  if num1_triples.intersection(num2_doubles).empty?
    return 0
  else
    return 1
  end

end