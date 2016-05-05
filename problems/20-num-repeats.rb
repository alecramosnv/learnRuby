# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
	count = 0
	dix = 0
	new = ""
	while dix < string.length
		letter = string[dix]
		unless new.include?(letter)
			new = new + letter
		else
		  #...
		end
		dix2 = dix + 1
		while dix2 < string.length
			if letter == string[dix2]
				count +=1
				break
			end
			dix2 +=1
		end
		dix += 1
	end
	puts(count.to_s)
	return count


end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)