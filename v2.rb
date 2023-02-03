require_relative 'caesar_cypher'
  
def print_menu
  puts "Choose an operation:\n"
  puts " "*6 + "1 - Encode"
  puts " "*6 + "2 - Decode\n\n"
  puts " "*6 + "9 - Quit\n"
end

puts '*'*18 + 'Caesar Cypher2' + '*'*18

loop do
  print_menu
  print 'I want: '
  option = gets.chomp
  case option
  when '1'
    print "\nType the sentence you want to encrypt: "
    sentence = gets.chomp
    print "\nNow type a number to shift your sentence: "
    shift_factor = gets.chomp.to_i
    puts "Encrypting...\n\n"
    puts "Your encrypted sentence is: #{caesar_cipher(sentence, shift_factor, 1)}"
  when '2'
    print "\nType the sentence you want to decrypt: "
    sentence = gets.chomp
    print "\nNow type the number that this sentence is shifted: "
    shift_factor = gets.chomp.to_i
    puts "Decrypting...\n\n"
    puts "Your decrypted sentence is: #{caesar_cipher(sentence, shift_factor, -1)}"
  when '9'
    puts "\n\nThank's for utylizing the Caesar Cypher2!"
    break
  else
    puts "That's not an valid option!"
    puts "Please type just numbers (0-9): "
    option = gets.chomp
  end
end