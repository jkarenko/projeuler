# https://projecteuler.net/problem=6

num = 100
sumsq = 0
sqsum = 0

for i in 1..num
	sumsq += i ** 2
	sqsum += i
end
sqsum **= 2

puts "#{sqsum} - #{sumsq} = #{sqsum-sumsq}"