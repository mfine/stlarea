module STLArea where

import Graphics.Formats.STL

distance :: Vector -> Vector -> Float
distance (a, b, c) (x, y, z) = sqrt $ (a - x) ** 2 + (b - y) ** 2 + (c - z) ** 2

area :: Triangle -> Float
area triangle = sqrt $ s * (s - x) * (s - y) * (s - z)
  where
    (a, b, c) = vertices triangle
    x         = distance a b
    y         = distance a c
    z         = distance b c
    s         = (x + y + z) / 2
