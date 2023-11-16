# create a hash with the Morse code for each letter as keys and the alphabet as values
morse_decoder {
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
# sepeare sentence in `words` using `split` and store it

# seperarte `words` in `letters` using `split` and store it

# translate each morse_letter into a letter
# ----------possible solution--------------
# nested_array.map! do |arr|
#   arr.map! { |morse_letter| decode_table[morse_letter] }
# end
# -----------------------------------------
  #loop through the new array of arrays we got from the previos 2 steps
    # loop through the inside array (using map! to update in place)
      # use the current element as key in the alphabet hash
      # modify in place the current element in the array with the value matched with the key

# flatten the array
# ----------possible solution--------------
# nested_array.map!(&:join).join(" ")
# -----------------------------------------
  #loop through the array of arrays (using map! to update in place)
    #join without seperator
  # Joing the array of arrays (now is only a normal array) with join and a space as seperator
# return the modified variable that now is a string
