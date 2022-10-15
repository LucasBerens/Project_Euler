#=
Sum square difference
Problem 6

The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=#

using Printf

n = 100
sum_squares = sum(collect(1:1:n).^2)
squared_sum = sum(collect(1:1:n)).^2

@printf("sum of □'s %.0f, □ of sums %.0f, difference %.0f", sum_squares, squared_sum, squared_sum-sum_squares)