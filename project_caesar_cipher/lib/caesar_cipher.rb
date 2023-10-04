class CaesarCipher
  def encrypt(str, shift)
    new_str = ''

    str.each_char do |c|
      if alphabet?(c).nil?
        new_str.concat(c)
      elsif uppercase?(c)
        new_str.concat(shift_char(c.downcase, shift).upcase)
      else
        new_str.concat(shift_char(c, shift))
      end
    end

    new_str
  end

  private

  def alphabet?(char)
    char =~ /[[:alpha:]]/
  end

  def uppercase?(char)
    char =~ /[A-Z]/
  end

  def shift_char(char, num)
    chars = ('a'..'z').to_a
    loc = chars.index(char)
    chars[(num + loc) % chars.length]
  end
end
