# frozen_string_literal: true

def caesar_cipher(string, shift_factor, operation)
  result = ''
  string.each_char do |char|
    ascii_char = char.ord
    if char.between?('A', 'Z') || char.between?('a', 'z')
      if operation == 1 # encrypt
        new_ascii = ascii_char + shift_factor
        if ascii_char <= 'Z'.ord
          new_ascii -= 26 if new_ascii > 'Z'.ord
        elsif new_ascii > 'z'.ord
          new_ascii -= 26
        end
      else # decrypt
        new_ascii = ascii_char - shift_factor
        if ascii_char <= 'Z'.ord
          new_ascii += 26 if new_ascii < 'A'.ord
        elsif new_ascii < 'a'.ord
          new_ascii += 26
        end
      end
      result += new_ascii.chr
    else
      result += char
    end
  end
  result
end
