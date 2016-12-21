module ConditionalCaseExample exposing (..)

import Html exposing (text)

aNumber : Int
aNumber = 4

outputStr : String
outputStr =
  case aNumber of
    0 -> "is a zero"
    1 -> "is a one"
    2 -> "is a two"
    _ -> "is not zero, one, or two" -- default case, if not fulfilled 0,1,or 2.

main =
  text outputStr
