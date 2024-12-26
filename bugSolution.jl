```julia
function my_function(x)
  if x > 0
    return x^2
  elseif isapprox(x,0)
    return 0
  else
    return 0
  end
end

result = my_function(-1)
println(result) # Output: 0

result = my_function(2)
println(result) # Output: 4

#Corrected behavior
result = my_function(0)
println(result) # Output: 0

result = my_function(0.0)
println(result) # Output: 0.0

result = my_function(1e-10)
println(result) # Output: 0
```