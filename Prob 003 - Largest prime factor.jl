#=
Largest prime factor
Problem 3

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
=#

# This code finds all prime factors, then selects the largest. There are easier ways to find the largest
# prime factor only, but I wanted to find all of them.

function largest_num(arr)
    return maximum(arr)
end

function prime_factors(N)
    factors_arr = zeros(0)
    while N%2 == 0
        append!(factors_arr, 2)
        N = N/2
    end # N is now odd and we have gotten rid of all "2" prime factors

    # Every composite number has a prime factor not greater than its square root:
    # https://proofwiki.org/wiki/Composite_Number_has_Prime_Factor_not_Greater_Than_its_Square_Root
    bound = trunc(Int, √N) + 1
    for i in 3:2:bound
        if N%i == 0 
            append!(factors_arr, i)
            N = N/i
        end
    end

    if N > 2
        append!(factors_arr, N)
    end
    return convert(Array{Int}, factors_arr)
end

N = 600851475143
println(largest_num(prime_factors(N)), prime_factors(N))