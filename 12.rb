# https://projecteuler.net/problem=12

divisors = []
n = 1
triangles = []

until divisors.size >= 500
	pooped = false
	divisors = [1]
	triangles.push n*(n+1)/2
	(1..triangles[-1]).each do |div|
		if triangles[-1] % div == 0
			divisors.push div
		end
	end
	n += 1
end
#divisors.push triangles[-1]
divisors.shift
print "\ntriangles: #{triangles}"

print "\ntriangle: #{triangles[-1]}"
puts "\ndivisors: #{divisors.size}: #{divisors}"
