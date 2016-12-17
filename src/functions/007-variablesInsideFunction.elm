module VariablesInsideFunction exposing (..)

import Html exposing (text)

circleArea : Int -> Float
circleArea radius =
  let
    pi : Float
    pi = 3.14 -- we "let" pi as a varible in the circleArea scope
  in
    pi * (toFloat radius^2) -- float cannot be multiplied by Int, so we must toFloat the Int first!

main =
  text (toString (circleArea 7))
