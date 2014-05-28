# https://projecteuler.net/problem=7

primes = [1,2]
num = 3
while primes.size <= 10001
	is_prime = true
	for i in 2..Math.sqrt(num).ceil
		if num % i == 0
			is_prime = false
			break
		end
	end
	if is_prime
		primes.push(num)
	end
	num += 1
end
puts "#{primes.size-1}. #{primes[-1]}"