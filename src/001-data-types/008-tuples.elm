module TuplesDS exposing (..)

import Html exposing (text)

-- Creating a tuple
aTuple =
  (1, 5, "John", True, 5)

-- Destructure the tuple into several constants
( num1, num2, name, aBool, num3) = aTuple

main =
  text
  ( "Whole Tuple: "
  ++ (toString aTuple)
  ++ "Destructuring - num1: "
  ++ (toString num1)
  ++ "Destructuring - num2: "
  ++ (toString num2)
  ++ "Destructuring - name: "
  ++ (toString name)
  ++ "Destructuring - aBool: "
  ++ (toString aBool)
  )
