puts "Please enter your message here:"

user_input = gets.chomp.split("")

puts "What is your Caeser cipher key?"

key = gets.chomp.to_i


message = user_input.map do |letter|
	if letter.match (/\w/)
		key.times do
 			letter.next!
 		end 
 	end 

 	if letter.length >1
 		letter = letter.split("")
 		letter.shift
 		letter = letter.join("")
 	end 
	letter
end 

puts message.join("")



