module Main exposing (..)

import Html exposing (Html, h1, text)
import Json.Decode as Decode


-- here is a stringified json


jsonStringified : String
jsonStringified =
    "42"



-- first, we need to create a decode function which return a Result


decodedJson : String -> Result String Int
decodedJson jsonStringified =
    Decode.decodeString Decode.int jsonStringified



-- here, we "parse" the result to get the real value of the parsed number


parseJsonNumber : Result String Int -> String
parseJsonNumber decoded =
    case decoded of
        Result.Ok val ->
            toString val

        Result.Err errMessage ->
            "errMessage"



-- display it in the main


main : Html msg
main =
    h1 [] [ text (parseJsonNumber (decodedJson jsonStringified)) ]
