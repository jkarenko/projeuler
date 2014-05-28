# https://projecteuler.net/problem=10

primes = [1,2]
num = 3
while primes[-1] <= 2000000
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

primes.pop # remove last b/c it's > 2M
primes.shift # remove number 1 from the beginning because of reasons
sum = primes.reduce(0) { |sum, value| sum + value }
puts "#{primes.size} prime numbers found under 2M, largest is #{primes[-1]}"
puts "sum of said primes is #{sum}"