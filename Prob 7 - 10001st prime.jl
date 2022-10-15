#=
10001st prime
Problem 7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10 001st prime number?
=#

using Printf

function is_prime(num)
    if num == 2
        return(true)
    end
    for i in 2:1:(√num + 1)
        return(~(num%i == 0))
    end
end

function get_nth_prime(nth)
    n,i = 0,1
    while n < nth
        if is_prime(i)
            n += 1
        end
        i += 1
    end
    return(n, i-1)
end

nth = 10001 # does not work for nth = 1
N, P = get_nth_prime(nth)
@printf("%.0fth prime is %.0f", N, P)