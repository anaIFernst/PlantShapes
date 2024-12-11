using PlantShapes
using Documenter

DocMeta.setdocmeta!(PlantShapes, :DocTestSetup, :(using PlantShapes); recursive=true)

makedocs(;
    modules=[PlantShapes],
    authors="anaIFernst <ana.ferreiraernst@wur.nl> and contributors",
    sitename="PlantShapes.jl",
    format=Documenter.HTML(;
        canonical="https://anaIFernst.github.io/PlantShapes.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/anaIFernst/PlantShapes.jl",
    devbranch="master",
)
