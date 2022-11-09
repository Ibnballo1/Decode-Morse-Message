# create a hash variable to hold the morse_alphabets
@morse_alphabets = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9', '-----' => '0', '.-.-.-' => '.'
}

def decode_char(char)
  @current_letter = @morse_alphabets[char]
  @current_letter
end

def decode_word(word)
  @current_word = ''
  word.split.each do |char|
    decode_char(char)
    @current_word += decode_char(char)
  end
  @current_word
end

def decode_sentence(sentence)
  # @current_sentence = sentence.split('  ')
  decode_sentence = ''
  sentence.split('   ').each do |word|
    decode_sentence += decode_word(word)
  end
  decode_sentence
end

puts decode_char(".-")
puts decode_word("-- -.--")
puts decode_sentence("-- -.--   -. .- -- .")
puts decode_sentence(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")