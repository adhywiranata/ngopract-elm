module CurryingByDefault exposing (..)
-- note: Elm is currying by default!

import Html exposing (text)

addBy5 : Int -> Int
addBy5 x =
  x + 5

multBy5 : Int -> Int
multBy5 x =
  x * 5

multBy5AfterAddBy5 = multBy5 (addBy5 6)

main =
    text (toString multBy5AfterAddBy5)
