using PlantShapes
using Test

#using Documenter add to test examples on documentation (loading...)
import Aqua

@testset "PlantShapes" begin

    @testset "Aqua" begin
        Aqua.test_all(PlantShapes; ambiguities = false, project_extras = false)
        Aqua.test_ambiguities([PlantShapes])
    end

    #Unit tests
    include("test_GeometricShapes.jl")
    
end
