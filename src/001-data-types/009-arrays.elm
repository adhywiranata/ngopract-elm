module ArraysDS exposing (..)

import Html exposing (text)

-- we must import Array before using it!
import Array exposing (..)

-- Creating an array
anArray =
  Array.empty -- create an empty array

updatedArray =
  Array.push 3 anArray

updatedArrayOnceMore =
  Array.push 6 updatedArray

getArrayIndexZero =
  Array.get 0 updatedArray

setArrayIndexZeroByFive =
  Array.set 0 5 updatedArray

getArrayIndexZeroAgain =
  Array.get 0 setArrayIndexZeroByFive

main =
  text
  ( "Array: "
  ++ (toString anArray)
  ++ " | | Pushed Array by 3: "
  ++ (toString updatedArray)
  ++ " | | Pushed Array by 6: "
  ++ (toString updatedArrayOnceMore)
  ++ " | | Array index 0 value: "
  ++ (toString getArrayIndexZero)
  ++ " | | Array index 0 new value after set: "
  ++ (toString getArrayIndexZeroAgain)
  )
