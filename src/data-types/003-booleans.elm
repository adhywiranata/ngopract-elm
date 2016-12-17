module BoolDS exposing (..)

import Html exposing (text)

aBool : Bool -- type annotations
aBool = True -- aBool variable value declaration. Must be true or false

main =
  text (toString aBool)
