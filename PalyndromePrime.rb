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

prime_palyndrome = -> (n) do 
    1.upto(Float::INFINITY).lazy.select { |x| palindrome?(x) and prime?(x) }.first(n) 
end


print prime_palyndrome.(gets.to_i)