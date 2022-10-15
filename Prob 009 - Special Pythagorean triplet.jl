#=
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=#

using Printf

function find_pythagorean_special(n=1000)
    arr = collect(1:1:n)
    for a in arr
        for b in arr
            c = √(a^2 + b^2)
            if is_whole(c) & (a + b + c == 1000) & (a^2 + b^2 == c^2) & (a < b < c)
                return(a, b, c)
            end
        end
    end
end

function is_whole(num)
    return (num % 1 == 0)
end


a, b, c = find_pythagorean_special()
println(a*b*c)