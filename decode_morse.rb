MORSE_MAP = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..'
}.freeze

def decode_char(char)
  MORSE_MAP.each do |key, value|
    return key.upcase if value == char
  end  
end

def decode_word(word)
  new_word = ''
  new_arr = word.split
  new_arr.each do |value|
    new_word += decode_char(value)
  end
  new_word  
end

def decode_morse_code(text)
  new_sentence = ''
  new_arr = text.split('  ')
  new_arr.each do |value|
    new_sentence += "#{decode_word(value)} "
  end
  # new_sentence.strip
  new_sentence
end

puts decode_morse_code('-- -.-- -. .- -- .')
