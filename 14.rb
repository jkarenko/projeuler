# https://projecteuler.net/problem=14

seq_start = 999999
num = seq_start
seq = 1
biggest_seq = 1
biggest_start = seq_start

until seq_start == 1
	#puts "biggest: #{biggest_seq}"
	#puts "num: #{num}"
	
	until num == 1
		if num % 2 == 0
			num /= 2
		else
			num = 3 * num + 1
		end
		seq += 1
		#puts "num: #{num}"
	end

	if seq > biggest_seq
		biggest_seq = seq
		biggest_start = seq_start
	end
	
	seq_start -= 1
	seq = 1
	num = seq_start
end

puts biggest_start