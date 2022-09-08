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

    "Pluto",
    "PlutoUI",
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


    # MIT Spring21
    "Markdown",
    "InteractiveUtils",
    "Compose",
    "ImageMagick",
    "ImageFiltering",
    "SpecialFunctions",
    "VegaLite",
    "VegaDatasets",
    "HypertextLiteral",
    "Colors",
    "ColorVectorSpace",
    "ImageShow",
    "FileIO",
    "ImageIO",
    "LinearAlgebra",
    "StatsBase",
    "Statistics",
    "DifferentialEquations",
    "MappedArrays",
    "libraries",
    "PlutoTest",
    "CSV",
    "LaTeXStrings",
    "Random",
    "Distributions",
    "OffsetArrays",
    "ForwardDiff",
    "Unitful",
    "Symbolics",
    "NonlinearSolve",
    "BenchmarkTools",
    "SparseArrays",
    "LightGraphs",
    "GraphPlot",
    "Printf",
    "GLM",
])
