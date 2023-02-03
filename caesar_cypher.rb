def caesar_cipher(string, shift_factor, operation)
    result = ''
    string.each_char do |char|
      ascii_char = char.ord
      if char.between?('A', 'Z') || char.between?('a', 'z')
        if operation == 1 #encrypt
          new_ascii = ascii_char + shift_factor
          if(ascii_char <= 'Z'.ord)
              new_ascii -= 26 if new_ascii > 'Z'.ord
          else
              new_ascii -= 26 if new_ascii > 'z'.ord
          end
          result += new_ascii.chr
        else #decrypt
          new_ascii = ascii_char - shift_factor
          if(ascii_char <= 'Z'.ord)
              new_ascii += 26 if new_ascii < 'A'.ord
          else
              new_ascii += 26 if new_ascii < 'a'.ord
          end
          result += new_ascii.chr
      end    
      else
        result += char
      end
    end
    result
  end