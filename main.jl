

# add JuMP and HiGHS
import Pkg
Pkg.add("JuMP")

import Pkg
Pkg.add("HiGHS")

using JuMP
using HiGHS

# create a model
model = Model(HiGHS.Optimizer)

# add variable x and y
@variable(model, x >= 0)
@variable(model, y >= 0)

# add a constraint
@constraint(model, x <= 1)
@constraint(model, y <= 2)

# set the objective
@objective(model, Max, x + y^2)

# solve the model
optimize!(model)

# print the optimal objective value
println("Optimal objective value: ", objective_value(model))

# print the optimal solution
println("Optimal solution:")
println("x = ", value(x))
println("y = ", value(y))

# print the status
println("Status: ", termination_status(model)) 
 The code above creates a simple optimization model with two variables, two constraints, and a quadratic objective function. The model is solved using the HiGHS solver, and the optimal objective value, optimal solution, and status are printed. 
 To run the code, save it in a file named  main.jl  and execute the following command in the terminal: 
 julia main.jl 
 The output should look like this: 
 Optimal objective value: 5.0



