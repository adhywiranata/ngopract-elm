module RecordsDS exposing (..)

import Html exposing (text)

aRecord =
  { name = "John", age = 25 } -- aRecord variable value declaration.

recordName =
  aRecord.name

recordAge =
  aRecord.age

updatedNameRecord =
  { aRecord |
      name = "Joan",
      age = aRecord.age + 1
  }

main =
  text
  ( "The Record: "
  ++ (toString aRecord) -- { name: "John", age: 25 }
  ++ "Record's name: "
  ++ (toString recordName) -- "John"
  ++ "Updated Record: "
  ++ (toString updatedNameRecord) -- { name: "Joan", age: 25 }
  )
