def morse_code_method
  { 'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.', 'g' => '--.',
    'h' => '....', 'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..', 'm' => '--', 'n' => '-.',
    'o' => '---', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-', 'u' => '..-',
    'v' => '...-', 'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..' }
end

def split_words(words_array)
  code_decoded = ''
  words_array.each do |word|
    letters_array = word.split()
    letters_array.each do |letter|
      code_decoded += morse_code_method.key(letter).to_s
    end
    code_decoded += ' '
  end
  code_decoded.strip
end

def split_sentence(message)
  words = message.split('   ')
  split_words(words)
end

print split_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
