# In development.
# This file contains functions that are used in components of the model.

"""
    DeG(rad)

        Converts radians to degrees. 

Arguments:
    - rad: Radians.
"""
# Convert radians to degrees
DeG(rad) = rad*180/π

"""
    RaD(deg)

        Converts degrees to radians.

Arguments:
    - deg: Degrees.
"""
# Convert degrees to radians
RaD(deg) = deg*π/180

"""
Examples:

```jldoctest 
DeG(π/2) = 90
RaD(90) = π/2
```
"""
