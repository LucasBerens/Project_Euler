#=
Multiples of 3 or 5
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
=#

# shorter way:
println(sum(0:3:999) + sum(0:5:999) - sum(0:15:999))

# longer way:
function problem1()    
    x = 0
    nats = 1:999
    for i in nats
        if i%3==0 || i%5==0
            x += i
        end
    end
    return(x)
end
println(problem1())