def palindrome?(n)
	n.to_s.reverse == n.to_s
end

def prime?(n)

	case n
	when 1
		return false
	when 2, 3
		return true
	else
		for i in 2..(n/3)+1
			n % i == 0 ? (return false) : 0
		end
		return true
	end

end

#NOTE: It's important that the check for palindrome? in the code below come first, and then the check for prime?
#      mainly beacuse the palindrome? function is less expensive (in Big O, the complexity in the worst case is 
#      O(1)) than the prime? function, so ruby will only evaluate prime? when palindrome? is true (because of the 
#      'and' keyword. The second statement is only evaluated if the first's result is true), reducing the processing cost.

prime_palyndrome = -> (n) do 
    1.upto(Float::INFINITY).lazy.select { |x| palindrome?(x) and prime?(x) }.first(n) 
end

print prime_palyndrome.(gets.to_i)