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

    "Plots", # Deps: Colors LaTeXStrings
    # # "Gadfly",
    # # "PyPlot.jl",
    # # "PlotlyJS",
    # # "UnicodePlots",
    # "ColorVectorSpace",
    # # "LightGraphs",
    # # "Compose",
    # # "GraphPlot", # Deps: Compose DelimitedFiles
    # # "VegaLite",
    # # "VegaDatasets",

    "PyCall", # Deps: Conda
    # "BenchmarkTools",

    # # "Example",

    "Pluto", # Deps: InteractiveUtils
    "PlutoUI",
    # "PlutoTest",
    # # "Interact",

    # "Images", # Deps: FileIO ImageIO ImageFiltering ImageMagick # 2nd Deps: OffsetArrays

    # # "Primes",
    # # "Clustering",
    # # "GLM", # Deps: Distributions
    # # "Distributions", # Deps: StatsBase SpecialFunctions
    # # "MultivariateStats",
    # # "Unitful",
    # # "ForwardDiff",

    # "MappedArrays",

    # # Takes long to install!
    # # "DifferentialEquations",
    # # "NonlinearSolve",
    # # "Symbolics",
    ])
