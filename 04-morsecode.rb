# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# Tip: write a method `morse_encode_word(word)` that handles a
# single word.
#

MORSE_CODE = {
	"A" => ".-",
	"B" => "-...",
	"C" => "-.-.",
	"D" => "-..",
	"E" => ".",
	"F" => "..-.",
	"G" => "--.",
	"H" => "....",
	"I" => "..",
	"J" => ".---",
	"K" => "-.-",
	"L" => ".-..",
	"M" => "--",
	"N" => "-.",
	"O" => "---",
	"P" => ".--.",
	"Q" => "--.-",
	"R" => ".-.",
	"S" => "...",
	"T" => "-",
	"U" => "..-",
	"V" => "...-",
	"W" => ".--",
	"X" => "-..-",
	"Y" => "-.--",
	"Z" => "--..",
	"a" => ".-",
	"b" => "-...",
	"c" => "-.-.",
	"d" => "-..",
	"e" => ".",
	"f" => "..-.",
	"g" => "--.",
	"h" => "....",
	"i" => "..",
	"j" => ".---",
	"k" => "-.-",
	"l" => ".-..",
	"m" => "--",
	"n" => "-.",
	"o" => "---",
	"p" => ".--.",
	"q" => "--.-",
	"r" => ".-.",
	"s" => "...",
	"t" => "-",
	"u" => "..-",
	"v" => "...-",
	"w" => ".--",
	"x" => "-..-",
	"y" => "-.--",
	"z" => "--..",
	" " => " ",
	"1" => ".----",
	"2" => "..---",
	"3" => "...--",
	"4" => "....-",
	"5" => ".....",
	"6" => "-....",
	"7" => "--...",
	"8" => "---..",
	"9" => "----.",
	"0" => "-----"
}

def morse_encode(str)
	arrayer = str.split
	combiner = arrayer.map {|word| morse_encode_word(word) }
	combiner.join("  ")
end

def morse_encode_word(word)
	letters = word.split
	array = letters.map {|x| MORSE_CODE[x]}
	array.join(" ")
end


puts("\nTests for #morse_encode")
puts("===============================================")
puts "morse_encode(\"q\") == \"--.-\": "  + (morse_encode("q") == "--.-").to_s
puts "morse_encode(\"cat\") == \"-.-. .- -\": "  + (morse_encode("cat") == "-.-. .- -").to_s
puts "morse_encode(\"cat in hat\") == \"-.-. .- -  .. -.  .... .- -\": "  + (morse_encode("cat in hat") == "-.-. .- -  .. -.  .... .- -").to_s

puts("===============================================")
