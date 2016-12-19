module MapFunction exposing (..)

import Html exposing (text)

doubleList : List Int -> List Int
doubleList listParam =
  List.map (\n -> n * 2) listParam

main =
  text (toString (doubleList [1, 2, 3]))
