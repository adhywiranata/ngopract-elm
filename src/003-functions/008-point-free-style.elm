module PointFreeStyle exposing (..)

import Html exposing (text)

-- normal way
tripleNormal : Int -> Int
tripleNormal num =
  3 * num

-- using (*) as prefix
tripleUsingPrefix : Int -> Int
tripleUsingPrefix num =
  (*) 3 num

-- point free style
-- point free is a style when you can omit the parameters since it is predictable
-- isn't it confusing? Not really, since we have the type annotations as function signature! 
triplePointFree : Int -> Int
triplePointFree =
  (*) 3

main =
  text (toString (triplePointFree 7))
