# https://projecteuler.net/problem=9

s = 1000
found = false

start_time = Time.now
(1..s/3).each do |a| # s/3 because we don't need to loop everything
	(1..s/2).each do |b| # s/2 because of same
		c = s-a-b
		if a**2 + b**2 == c**2
			puts "#{a}+#{b}+#{c}=#{a+b+c}"
			puts "#{a}*#{b}*#{c}=#{a*b*c}"
			found = true
			break
		end
		break if found
	end
end
stop_time = Time.now
puts "#{(stop_time - start_time)*1000}ms"