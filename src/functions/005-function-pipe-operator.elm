module PipeOperator exposing (..)

import Html exposing (text)

add : Int -> Int -> Int
add x y =
  x + y

subtract : Int -> Int -> Int
subtract x y =
  x - y

finalNumber =
  3
    |> add 2 -- 2 + 3
    |> subtract 1 -- subtract 1 (2 + 3)
-- main shows the index html page
main =
    text (toString finalNumber) -- 1 - ( 2 + 3 ) = -4
