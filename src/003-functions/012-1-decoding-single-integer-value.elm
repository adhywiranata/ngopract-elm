module Main exposing (..)

import Html exposing (Html, h1, text)
import Json.Decode as Decode


jsonStringified : String
jsonStringified =
    "42"


decodedJson : String -> Result String Int
decodedJson jsonStringified =
    Decode.decodeString Decode.int jsonStringified


parseJsonNumber : Result String Int -> String
parseJsonNumber decoded =
    case decoded of
        Result.Ok val ->
            toString val

        Result.Err errMessage ->
            "errMessage"


main : Html msg
main =
    h1 [] [ text (parseJsonNumber (decodedJson jsonStringified)) ]
