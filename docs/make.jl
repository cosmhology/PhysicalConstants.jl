using Documenter, Measurements, PhysicalConstant

makedocs(
    modules = [PhysicalConstant],
    clean = false,
    format = :html,
    sitename = "PhysicalConstant.jl",
    authors = "La Guer.",
    pages    = Any[
        "Introduction" => "index.md",
        "Installation" => "installation.md",
        "Usage"        => "usage.md",
        "Examples"     => "examples.md",
        "Performance"  => "performance.md",
        "Development"  => "todo.md",
        "Appendix"     => "appendix.md",
    ]
)

deploydocs(
    julia = "nightly",
    repo = "github.com/LaGuer/PhysicalConstant.jl.git",
    target = "build",
    deps = nothing,
    make = nothing,
)
