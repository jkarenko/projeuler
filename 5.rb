# https://projecteuler.net/problem=5

number = 1
found = false
dividers = (1..20).to_a
while true
	dividers.each do |x|
		if number % x != 0
			break
		elsif x == dividers[-1]
			found = true
		end
	end
	if found
		break
	end
	if number % 1000 == 0
		puts number
	end
	number += 1
end
puts number