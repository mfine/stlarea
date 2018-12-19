{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

import BasicPrelude         hiding (Vector, getArgs)
import Data.Attoparsec.Text
import Graphics.Formats.STL
import STLArea
import System.Environment
import Text.Printf

main :: IO ()
main = do
  args <- getArgs
  forM_ args $ \arg -> do
    contents <- readFile arg
    let (Right stl) = parseOnly stlParser contents
    printf "%s: %.3f\n" arg $ sum $ map area (triangles stl)
