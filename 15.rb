# https://projecteuler.net/problem=15

width = 20
factorial = lambda { |n| (2..n).inject(1,:*) }
puts (factorial.call 2 * width) / (factorial.call width)**2