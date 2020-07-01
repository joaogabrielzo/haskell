module Acronym (abbreviate) where

import Data.Char (toUpper)

replaceSymbol :: Char -> Char
replaceSymbol = \c -> if c == '-' || c == '_'
                     then ' '
                     else c

abbreviate :: String -> String
abbreviate = map toUpper . map head . words . map replaceSymbol
