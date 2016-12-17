module RecordAliasesDS exposing (..)

import Html exposing (text)

-- create a record alias
type alias Human =
  { name : String
  , age : Int
  , money : Int
  }

johnHuman : Human
johnHuman =
  { name = "John"
  , age = 25
  , money = 5000
  }

mikeHuman : Human
mikeHuman =
  { name = "Mike"
  , age = 21
  , money = 2000
  }

main =
  text
  ( "The Human Record: "
  ++ (toString johnHuman) -- { name: "John", age: 25, money: 5000 }
  ++ "Another Human Record: "
  ++ (toString mikeHuman) -- { name: "Mike", age: 21, money: 2000 }
  )
