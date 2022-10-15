#=
Summation of primes
 
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=#

using Printf

function is_prime(num)
    if num==1
        return(false)
    end
    if num==2
        return(true)
    end
    upper_limit = trunc(Int, sqrt(num)) + 1
    for i in 2:upper_limit
        if num%i == 0
            return false
        end
    end
    return true
end

function prime_sum(n)
    sum = 0
    for i in 1:1:n
        if is_prime(i)
            sum += i
        end
    end
    return(sum)
end

println(prime_sum(2e6))