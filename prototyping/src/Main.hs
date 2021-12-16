module Main where

import Annotations.Transaction

main :: IO ()
main = putStrLn "Hello, Haskell!"


annotationTest :: String -> IO String
{-# ANN annotationTest Transactional #-}
annotationTest str = do
  putStrLn str
  return str