module ConditionalExample exposing (..)

import Html exposing (text)

aNumber : Int
aNumber = 5

outputStr : String
outputStr =
  if aNumber > 10 then
    "higher than 10!"
  else if aNumber < 3 then
    "lower than 3!"
  else
    "lower than 10 but higher than 3!"

main =
  text outputStr
