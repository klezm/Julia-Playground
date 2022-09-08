# https://stackoverflow.com/questions/36642247/is-there-any-way-to-build-package-dependency-tree-in-julia-lang

using Pkg

function getdeps(pkg)
    collect(keys(Pkg.dependencies()[Pkg.project().dependencies[pkg]].dependencies))
end

for p in Pkg.installed()
    println("\"", p.first, "\":\t", getdeps(p.first), ",")
end
