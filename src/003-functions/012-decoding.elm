module Main exposing (..)

import Html exposing (Html, h1, text)
import Json.Decode as Decode exposing (decodeString)


-- we're going to decode an JSON object into Record
-- type alias UserDataState =
--     { name : String, age : Int }
-- UserDataState : String -> Int -> UserDataState
-- makeUserDataState : String -> Int -> UserDataState
-- makeUserDataState name age =
--     { name = name, age = age }
-- decoder =
--     decode UserDataState
--         |> required "name" String
--         |> required "age" Int
--
--
--
-- decodeString decoder
--   """{"name": "Ali", "age": 20}"""
--
-- == Ok { name = Ali, age = 20}


-- userDecoder : Decode.Decoder { name : String }
-- userDecoder =
--     Decode.map (\name -> { name = name })
--         (Decode.at [ "name" ] Decode.string)

-- decodeString userDecoder """{"name": "Jack"}"""
Decode.decodeString int "43"

main : Html msg
main =
    h1 [] [ text "hellow" ]
