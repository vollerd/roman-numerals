def roman_to_num(roman)
	key={"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
	p = c = n =0
	roman.each_char do |i|
		c=key[i]
		n += p if p>=c
		n -= p if p<c
		p = c
	end
	n+=c
end 

puts roman_to_num('MCMLXXVIII')

# lack of commenting and short variable names are because of submission to therubygame challenges!

