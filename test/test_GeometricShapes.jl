using Test, Unitful
import PlantShapes
import Unitful: m, mm, cm
PS = PlantShapes

let 

    # Without units
    height_r = 1.0
    width_r = 0.5
    ar = 0.5/1.0
    # With units
    height_u = 1.0m
    width_u = 0.5m
    
    area_r = PS.DimAreaEllipse(height_r, width_r)
    area_u = PS.DimAreaEllipse(height_u, width_u)
    @test area_r == ustrip(area_u)
    
    height_rq, width_rq = PS.AreaDimEllipse(area_r, ar)
    @test height_r == height_rq
    height_uq, width_uq = PS.AreaDimEllipse(area_u, ar)
    @test height_rq == ustrip(height_uq)

end