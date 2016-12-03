module NamedFunction exposing (..)

import Html exposing (text)

add : Int -> Int -> Int
add x y =
  x + y

-- define a partial Sum, which is a sum 2 ...
add2 =
  add 2

numberSum =
  add2 3
-- main shows the index html page
main =
    text (toString numberSum) -- 2 + 3 = 5
