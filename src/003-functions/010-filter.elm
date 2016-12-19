module FilterFunction exposing (..)

import Html exposing (text)

filterOdd : List Int -> List Int
filterOdd listParam =
  List.filter (\n -> n % 2 /= 0) listParam

main =
  text (toString (filterOdd [1, 2, 3, 4, 5, 6]))
