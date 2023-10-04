require "./lib/caesar_cipher"

describe CaesarCipher do
  it 'returns the right answer' do
    caesar_cipher = CaesarCipher.new
    got = caesar_cipher.encrypt('What a string!', 5)
    expected = 'Bmfy f xywnsl!'
    expect(got).to eql(expected)
  end
  it 'returns the right answer' do
    caesar_cipher = CaesarCipher.new
    got = caesar_cipher.encrypt('', 5)
    expected = ''
    expect(got).to eql(expected)
  end
  it 'returns the right answer' do
    caesar_cipher = CaesarCipher.new
    got = caesar_cipher.encrypt('!!!!', 5)
    expected = '!!!!'
    expect(got).to eql(expected)
  end
end

=begin
# we get a string with different characters
# if the characters aren't letters, simply add to string
# if they are:
# check if they are capital or lower
# shift them to new character
# make them match origianl case
# add to string
# return
=end