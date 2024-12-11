using PlantShapes
using Documenter

DocMeta.setdocmeta!(PlantShapes, :DocTestSetup, :(using PlantShapes); recursive=true)

makedocs(;
    doctest = false,
    modules = [PlantShapes],
    authors = "anaIFernst <ana.ferreiraernst@wur.nl> and contributors",
    sitename = "PlantShapes.jl",
    repo = "https://github.com/anaIFernst/PlantShapes.jl/blob/{commit}{path}#{line}",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        edit_link = "master",
        assets = String[],
    ),
    pages = [
        "API" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/anaIFernst/PlantShapes.jl",
    devbranch="master",
)
