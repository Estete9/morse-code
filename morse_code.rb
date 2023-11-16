# create a hash with the Morse code for each letter as keys and the alphabet as values

# sepeare sentence in `words` using `split` and store it

# seperarte `words` in `letters` using `split` and store it

#loop through the new array of arrays we got from the previos 2 steps
  # loop through the inside array (using map! to update in place)
    # use the current element as key in the alphabet hash
    # modify in place the current element in the array with the value matched with the key

# flatten the array
# ----------possible solution to flatten the array: `nested_array.map!(&:join).join(" ")`-----------
  #loop through the array of arrays (using map! to update in place)
    #join without seperator
  # Joing the array of arrays (now is only a normal array) with join and a space as seperator
# return the modified variable that now is a string
