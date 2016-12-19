module RecordsDS exposing (..)

import Html exposing (text)

aRecord =
  { name = "John", age = 25 } -- aRecord variable value declaration.

recordName =
  aRecord.name

recordAge =
  aRecord.age

updatedAgeRecord =
  { aRecord |
      name = "Joan",
      age = aRecord.age + 1
  }

{ name, age } = updatedAgeRecord -- Destructuring

main =
  text
  ( "The Record: "
  ++ (toString aRecord) -- { name: "John", age: 25 }
  ++ "Record's name: "
  ++ (toString recordName) -- "John"
  ++ "Updated Record: "
  ++ (toString updatedAgeRecord) -- { name: "Joan", age: 26 }
  ++ "Destructuring - Name: "
  ++ (toString name) -- "Joan"
  ++ "Destructuring - Age: "
  ++ (toString age) -- 26
  )
