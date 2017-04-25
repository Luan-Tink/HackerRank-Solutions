# this code is an Example of using lambda functions

def factorial(n)
    r = 1
    while n > 0 do
        r = n * r
        n -= 1
    end
    return r
end

combination = -> (n) do
    -> (r) do
        factorial(n)/(factorial(r)*factorial(n-r))
    end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)