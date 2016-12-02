module NamedFunction exposing (..)

import Html exposing (text)

-- function signature (this is optional)
-- [read: int as a parameter 1 and 2, and int as the return]
sum : Int -> Int -> Int
-- named function
sum x y =
  x + y
-- define a number1 variable which have add1 return value as its own value
number1 =
  sum 2 3
-- main shows the index html page
main =
    text (toString number1) -- toString converts an Int to String
