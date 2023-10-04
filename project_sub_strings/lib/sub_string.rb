class SubString
  def find_substrings(sentence, dictionary)
    result = Hash.new(0)
    dictionary.each do |substring|
      count = sentence.scan(/#{substring}/i).length
      result[substring] = count if count > 0
    end
    result
  end
end
