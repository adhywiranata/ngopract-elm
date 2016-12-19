module FoldFunction exposing (..)
-- Foldr is just the same as reduce in JavaScript

{-
Understanding Foldl and Foldr
Fold with r is Foldr, means we're folding with right association.
Fold with l is Foldl, means we're folding with left association.

Right Association:
1 + 2 + 3 + 4 =>  1 + (2 + (3 + 4)

Left Association:
1 + 2 + 3 + 4 => (((1 + 2) + 3) + 4)
-}

import Html exposing (text)

listMult : Int -> List Int -> Int
listMult starting listParam =
  List.foldl (\currentProduct -> \currentValue -> currentProduct * currentValue) starting listParam

main =
  text (toString (listMult 1 [1, 2, 3, 4, 5]))
