# https://projecteuler.net/problem=3
# find largest prime factor

primes = [1,2,3,5,7]

(2..10000).each do |num|
	if num % 2 != 0	&& num % 3 != 0	&& num % 5 != 0	&& num % 7 != 0
		primes.push(num)
	end
end
# print primes

number = 600851475143

factors = []
i = 0
while i < primes.size
	prime = primes[i]
	if number % prime == 0
		factors.push(prime)
		number = number / prime
		i = 0
		puts "FOUND #{prime}"
	end
	i += 1
end
print factors