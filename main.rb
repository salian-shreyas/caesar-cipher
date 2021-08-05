# Command line caesar-cipher encryption program

def encrypt_lowercase(ch, shift_factor)
  std_alpha = ch.ord - 97
  return (std_alpha + shift_factor) % 26 + 97
end

def encrypt_uppercase(ch, shift_factor)
  std_alpha = ch.ord - 65
  return (std_alpha + shift_factor) % 26 + 65
end

def encrypt_string(string, shift_factor)
  letters = string.split('')

  result = letters.map do |ch|
    if ch >= 'A' && ch <= 'Z'
      encrypt_uppercase(ch, shift_factor).chr
    elsif ch >= 'a' && ch <= 'z'
      encrypt_lowercase(ch, shift_factor).chr
    else
      ch
    end
  end

  result.join
end

def get_shift_factor()
  print "Enter shift factor    : "
  shift_factor = gets.chomp.to_i
  return shift_factor
end

def get_string()
  print "Enter text to encrypt : "
  string = gets.chomp
  return string
end

def print_result(result)
  puts "\nEncrypted text: #{result}"
end

# Gets inputs
string = get_string()
shift_factor = get_shift_factor()

# Perform operation and display result
result = encrypt_string(string, shift_factor)
print_result(result)



















#
