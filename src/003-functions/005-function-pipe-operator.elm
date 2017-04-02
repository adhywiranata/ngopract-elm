module PipeOperator exposing (..)

import Html exposing (text, Html)


add : Int -> Int -> Int
add x y =
    x + y


subtract : Int -> Int -> Int
subtract x y =
    x - y


multiply : Int -> Int -> Int
multiply x y =
    x * y


divide : Int -> Int -> Int
divide x y =
    x // y


abs : Int -> Int
abs x =
    x * -1


finalNumber : Int
finalNumber =
    3
        |> add 2
        -- 2 + 3
        |> subtract 1
        -- 1 - (2 + 3)
        |> multiply 2
        -- 2 * (1 - (2 + 3))
        |> divide 16
        -- 16 / ( 2 * (1 - (2 + 3)))
        |> abs


main =
    text (toString finalNumber)
