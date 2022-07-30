#=
Largest palindrome product
Problem 4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=#

# Check if a number is palindromic
function is_palindrome(N)
    N_arr = digits(N) # Digits gives an array of N in reverse order
    N_arr == reverse(N_arr)
end

# Get first dual products of length len of number
function get_2_products(N, len)
    for i in 1:1:√N
        if N%i == 0 && length(digits(Int(N/i))) == len
            return (i, N/i)
        end
    end
    return false
end

# Find largest palindrome below threshold and check if it is the product of two len-digit numbers
function find_largest_pal(thresh, len)
    for i in collect(thresh:-1:1) # Start from largest number then work our way down
        if is_palindrome(i) && get_2_products(i, len) != false # Can't only check if get_2_products is true, only if it is not false
            a,b = get_2_products(i, len)
            return (a, b, i)
        end
    end
end

# Since it's two 3-digit numbers, we only need to check up to 999*999 = 998001
find_largest_pal(998001, 3)