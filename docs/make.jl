using Documenter, Measurements, PhysicalConstant

makedocs(
    modules = [PhysicalConstant],
    format = :html,
    sitename = "PhysicalConstant",
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
    repo = "github.com/LaGuer/PhysicalConstant.jl.git",
    target = "build",
    deps = nothing,
    make = nothing,
)
