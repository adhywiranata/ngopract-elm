module FloatDS exposing (..)

import Html exposing (text)

aFloat : Float -- type annotations
aFloat = 0.5 -- aBool variable value declaration. Must be a flat number

main =
  text (toString aFloat)
