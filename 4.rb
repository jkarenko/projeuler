# https://projecteuler.net/problem=4

found = false
num = 999*999
until num <= 0 do
	str = num.to_s
	if str.length % 2
		str1 = str[0..((str.length/2)-1)]
		str2 = str[((str.length/2))..-1]
		if str1 == str2.reverse
			div = 1000
			div.step(1,-1).each do |i|
				poop = num % i
				if poop == 0 && num / i < 1000 && i < 1000
					puts "#{num} #{i} #{num/i}"
					found = true
					break
				end
			end
		end
	else
		str1 = str[0..((str.length/2)-1)]
		str2 = str[((str.length/2)+1)..-1]
		if str1 == str2.reverse
			#puts str
		end
	end

	if found
		break
	end
	num -= 1
end