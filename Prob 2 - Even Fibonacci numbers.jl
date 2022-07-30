#=
Even Fibonacci numbers
Problem 2

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
=#

using Plots
 
x = collect(1:0.1:30)
y = sin.(x)
df = 2
 
anim = @animate for i = 1:df:length(x)
    plot(x[1:i], y[1:i], legend=false)
end
 
gif(anim, "tutorial_anim_fps30.gif", fps = 30)

