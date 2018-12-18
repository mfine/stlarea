{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

import BasicPrelude         hiding (Vector, getArgs)
import Data.Attoparsec.Text
import Graphics.Formats.STL
import Text.Printf
import System.Environment

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

main :: IO ()
main = do
  args <- getArgs
  forM_ args $ \arg -> do
    contents <- readFile arg
    let (Right stl) = parseOnly stlParser contents
    printf "%s: %.3f\n" arg $ sum $ map area (triangles stl)
