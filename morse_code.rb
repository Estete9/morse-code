# create a hash with the Morse code for each letter as keys and the alphabet as values
@morse_decoder = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
}

# Takes an nested array with morse_letters and returns it decoded
def decode_message(message_arr)
  message_arr.map do |word_arr|
    word_arr.map { |morse_letter| morse_to_letter(morse_letter) }
  end
end

# Takes a morse_letter and returns a letter
def morse_to_letter(morse_letter)
  @morse_decoder[morse_letter]
end

def sentence_to_words(sentence)
  # sepeare sentence in `words` using `split` and store it
  sentence.split('   ')
end

def word_to_letters(word)
# seperarte `words` in `letters` using `split` and store it
  word.split
end

# flatten the array
def flatten_array(message_arr)
  message_arr.map(&:join).join(' ')
end


# Take a string (morse code message) and return the decoded message:
def decode(code)
  words_array = sentence_to_words(code)
  # puts "words_array: #{words_array}"
  letters_array = words_array.map { |word| word_to_letters(word) }
  # puts "letters_array: #{letters_array}"
  decoded_message = decode_message(letters_array)
  # puts "decoded_message: #{decoded_message}"
  flatten_array(decoded_message)
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')