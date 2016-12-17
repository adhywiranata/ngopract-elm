module VariablesInsideFunction exposing (..)

import Html exposing (text)

circleArea : Int -> Int
circleArea radius =
  let
    pi : Float
    pi = 3.14
  in
    pi * radius^2

main =
  text (toString (circleArea 7))
