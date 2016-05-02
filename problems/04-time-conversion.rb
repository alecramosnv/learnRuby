# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
	t = minutes * 60
	Time.at(seconds).utc.strftime("%H:%M:%S")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '00:15:00').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '02:30:00').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '06:00:00').to_s)
