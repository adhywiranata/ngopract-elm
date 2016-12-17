module ListDS exposing (..)

import Html exposing (text)

aList : List Int -- type annotations
aList =
  [0, 1, 2, 3] -- aList variable value declaration. Must be a List of Integers!
-- List is not array. We cannot access the values using indexes!

-- access the first element
firstElementOfList : Maybe Int
firstElementOfList =
  List.head aList

-- access the rest of the element
restOfElementsOfList : Maybe (List Int)
restOfElementsOfList =
  List.tail aList

-- List can also be made like this
anotherList : List Int
anotherList =
  1 :: 2 :: 3 :: 4 :: [5, 6, 7]

main =
  text
  ( "The List: "
  ++ (toString aList) -- [0, 1, 2, 3]
  ++ " First Element of List: "
  ++ (toString firstElementOfList) -- Just 0
  ++ " The Rest of Elements of the List: "
  ++ (toString restOfElementsOfList) -- Just [1, 2, 3]
  ++ " Another List: "
  ++ (toString anotherList) -- [1,2,3,4,5,6,7]
  )
