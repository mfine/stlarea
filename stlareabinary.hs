{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

import           BasicPrelude       hiding (Vector, getArgs)
import qualified Data.ByteString    as BS
import           Graphics.Formats.STL
import           Data.Serialize
import           STLArea
import           System.Environment
import           Text.Printf

main :: IO ()
main = do
  args <- getArgs
  forM_ args $ \arg -> do
    contents <- BS.readFile arg
    let (Right stl) = runGet get contents
    printf "%s: %.3f\n" arg $ sum $ map area (triangles stl)
