# https://projecteuler.net/problem=2

sequence = [1,2]
i = 3
until i >= 4000000
	sequence.push(i)
	i = sequence[-1] + sequence[-2]
end

sum = 0
sequence.each do |x|
	if x % 2 == 0
		sum += x
	end
end
puts sum