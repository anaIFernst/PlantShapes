# In development. More shapes will be included and new functions.

# Functions that compute dimensions from area and area from dimensios for different geometries
using Unitful
import Unitful: m, mm, cm
## Ellipse ##

"""
    DimAreaEllipse(height, width)

        Computes the area of an ellipse from its dimensions.
    
    Arguments:
        - height: Height of the ellipse (Quantity or Real)
        - width: Width of the ellipse (Quantity or Real)
        Both arguments need consistent units.     
"""
# Compute ellipse area from dimensions
DimAreaEllipse(height::T, width::T) where {T <: Real} = π*height*width/4
DimAreaEllipse(height::T, width::T) where {T <: Quantity} = π*height*width/4 # Unitful version
    
"""
    AreaDimEllipse(area, ar)

        Computes the length and width of an ellipse from its area and aspect ratio.
    
    Arguments:
        - area: Area of the ellipse (Quantity or Real)
        - ar: Aspect ratio (width/length) of the ellipse (Real)
        Default aspect ratio is 0.06/0.85.
"""
# Compute length and width from ellipse area assuming specific aspect ratio (width/length)
function AreaDimEllipse(area::T, ar::T = (0.06/0.85)) where {T <: Real}
    length = sqrt(4*area/(π*ar))
    height = ar*length
    return (length = length, height = height)
end
function AreaDimEllipse(area::T, ar::W = (0.06/0.85)) where {T <: Quantity, W <: Real} # Unitful version
    length = sqrt(4*area/(π*ar))
    height = ar*length
    return (length = length, height = height)
end

"""
Examples:
```jldoctest
    DimAreaEllipse(0.1m, 0.1m)
    DimAreaEllipse(0.1, 0.1)

    AreaDimEllipse(0.00785m^2, 1)
    AreaDimEllipse(0.00785, 1)
```
"""