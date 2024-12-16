using DelimitedFiles
using Documenter

DocMeta.setdocmeta!(DelimitedFiles, :DocTestSetup, :(using DelimitedFiles); recursive=true)

makedocs(;
    modules = [DelimitedFiles],
    sitename = "DelimitedFiles.jl",
    format=Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
        canonical = "https://delimitedfiles.juliadata.org/",
        edit_link="main",
        assets=String[],
    ),
    pages = Any[
        "Home" => "index.md"
    ],
    warnonly = :missing_docs,
)

deploydocs(;
    repo = "github.com/JuliaData/DelimitedFiles.jl",
    versions = ["v#.#", "dev" => "dev"],
    push_preview = true,
)
