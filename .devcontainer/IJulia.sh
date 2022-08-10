#!/bin/bash

# https://julialang.github.io/IJulia.jl/stable/manual/installation/

echo '
using Pkg
Pkg.add("IJulia")

Pkg.update()

Pkg.build("IJulia")

# using IJulia
# installkernel("Julia nodeps", "--depwarn=no")
' | julia
