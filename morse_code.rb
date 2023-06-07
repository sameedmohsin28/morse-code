def morse_code_method
  morse_code_symbols_hash = { "a"=>".-", "b"=>"-...", "c"=>"-.-.", "d"=>"-..", "e"=>".", "f"=>"..-.", "g"=>"--.",
    "h"=>"....", "i"=>"..", "j"=>".---", "k"=>"-.-", "l"=>".-..", "m"=>"--", "n"=>"-.", "o"=>"---", "p"=>".--.",
    "q"=>"--.-", "r"=>".-.", "s"=>"...", "t"=>"-", "u"=>"..-", "v"=>"...-", "w"=>".--", "x"=>"-..-", "y"=>"-.--",
    "z"=>"--.." }
end

def morse_code_decoder(message)
  morse_code_symbols = morse_code_method
  spaces = ""
  single_alphabet = ""
  code_decoded = ""

  message.each_char do |character|
    if character == " "
      abc = morse_code_symbols.key(single_alphabet).to_s
      code_decoded += abc
      single_alphabet = ""
      spaces += character
      if spaces == "   "
        code_decoded += " "
        spaces = ""
      end
    else
      spaces = ""
      single_alphabet += character
    end
  end
  return code_decoded
end

print morse_code_decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
