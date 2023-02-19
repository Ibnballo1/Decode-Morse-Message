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
  @letter = @morse_alphabets[char]
  @letter
end

def decode_word(words)
  @new_str = ''
  words.split(' ').each do |char|
    @new_str += decode_char(char)
  end
  @new_str
end

def decode_sentence(sentences)
  @new_sentence = ''
  sentences.split('   ').map do |word|
    @new_sentence += "#{decode_word(word)} "
  end
  @new_sentence
end

# def decode_sentence(morse_code)
#   morse_code.split('   ').map { |word| word.split(' ').map {|letter| decode_char(letter) }.join }.join(' ') 
# end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_sentence('-- -.--   -. .- -- .')
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
