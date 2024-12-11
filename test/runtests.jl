using PlantShapes
using Test
using Documenter
import Aqua

# Test examples on documentation (jldoctest blocks)
DocMeta.setdocmeta!(PlantShapes,
    :DocTestSetup,
    :(using PlantShapes);
    recursive = true)
doctest(PlantShapes)

@testset "Aqua" begin
    Aqua.test_all(PlantShapes; ambiguities = false, project_extras = false)
    Aqua.test_ambiguities([PlantShapes])
end

@testset "PlantShapes" begin

    include("test_GeometricShapes.jl")
    include("test_ComponentFunctions.jl")
    
end
