module FunctionCallAnother exposing (..)

import Html exposing (text)

-- function signature (this is optional)
-- [read: int as a parameter 1 and 2, and int as the return]
multiply : Int -> Int -> Int
-- named function
multiply x y =
  x * y

-- another function
divide : Int -> Int -> Int
divide x y =
  x // y -- // is for Int, single / for float

numberFinal =
  divide 12 (multiply 2 3)
-- main shows the index html page
main =
    text (toString numberFinal) -- toString converts an Int to String
