#=
Smallest multiple
Problem 5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=#

# if a number is divisible by 20 it is also divisible by 2, 4, 5, 10
#                divisible by 18 it is also divisible by 2, 3, 6, 9
#                divisible by 16 it is also divisible by 2, 4, 8
#                divisible by 15 it is also divisible by 3, 5
#                divisible by 14 it is also divisible by 2, 7
#                divisible by 12 it is also divisible by 2, 3, 4 6
# Therefore, the number has to be smaller than or equal to 20*19*18*17*16*15*14*13*12*11 = 670442572800
# The prime factorization of all numbers 

# long way
function smallest_20()
    i = 1
    arr = [20, 19, 18, 17, 16, 15, 14, 13, 11]
    while true
        if i.%arr == fill(0, length(arr))
            return(i)
        end
        i += 1
    end
end

# short way
function smallest_20_short()
    i = 1
    while true
        if i%20==0 && i%19==0 && i%18==0 && i%17==0 && i%16==0 && i%15==0 && i%14==0 && i%13==0 && i%11==0 && i%11==0 
            return(i)
        end
        i += 1
    end
end

smallest_20_short()