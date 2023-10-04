require './lib/sub_string'

describe SubString do
  it 'return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found' do
    sub_string = SubString.new
    dictionary = %w[below down go going horn how howdy it i low own part partner
                    sit]
    got = sub_string.find_substrings('below', dictionary)
    expected = { 'below' => 1, 'low' => 1 }
    expect(got).to eql(expected)
  end
  it 'return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found' do
    sub_string = SubString.new
    dictionary = %w[below down go going horn how howdy it i low own part partner
                    sit]
    got = sub_string.find_substrings("Howdy partner, sit down! How's it going?", dictionary)
    expected =
      { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1,
        'partner' => 1, 'sit' => 1 }

    expect(got).to eql(expected)
  end
end

# for each word in the first argument, check if it exists in the dictionary
## if it exists => check if any of its substrings are in the dictionary