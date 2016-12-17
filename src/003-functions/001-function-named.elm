module NamedFunction exposing (..)

import Html exposing (text)

-- function signature (this is optional)
-- [read: int as a parameter 1 and 2, and int as the return]
sum : Int -> Int -> Int
-- named function
sum x y =
  x + y
-- define a numberSum variable which have sum return value as its own value
numberSum =
  sum 2 3
-- main shows the index html page
main =
    text (toString numberSum) -- toString converts an Int to String
