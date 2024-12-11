using Test
import PlantShapes
PS = PlantShapes

let 

    deg = 90.0
    rad = π/2
    @test PS.DeG(rad) == deg
    @test PS.RaD(deg) == rad

end