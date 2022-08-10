#!/usr/local/julia/bin/julia

# https://julialang.github.io/IJulia.jl/stable/manual/installation/

using Pkg
Pkg.add("IJulia")

Pkg.update()

Pkg.build("IJulia")

# using IJulia
# installkernel("Julia nodeps", "--depwarn=no")


Pkg.add([
    "DataFrames",
    # "CSV",
    # "DelimitedFiles",

    "Plots",
    # "PyPlot.jl",
    # "PlotlyJS",
    # "UnicodePlots",
    # "Colors",

    "PyCall",
    # "Conda",

    # "BenchmarkTools",
    # "Example",
    # "OdsIO",

    # "Pluto",
    # "Interact",
    # "Compose",
    # "Gadfly",

    "Images",
    # "QuartzImageIO",
    # "ImageMagick",

    # "Clustering",
    # "MultivariateStats",
    # "ForwardDiff",

    # "Primes",
])
