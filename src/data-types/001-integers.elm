module IntegersDS exposing (..)

import Html exposing (text)

aNumber : Int -- type annotations
aNumber = 5 -- aNumber variable value declaration. Must be an Integer! 

main =
  text (toString aNumber)
