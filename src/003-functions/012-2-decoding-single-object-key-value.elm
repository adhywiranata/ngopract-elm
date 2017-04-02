module Main exposing (..)

import Html exposing (Html, h1, text)
import Json.Decode as Decode


-- here is a stringified json


jsonStringified : String
jsonStringified =
    """{ "name": "Jake" }"""



-- setup a decoder to decode JSON object to Record


userDecoder : Decode.Decoder { name : String }
userDecoder =
    Decode.map (\name -> { name = name })
        (Decode.at [ "name" ] Decode.string)



-- decode json using a previously set decoder


decodedJson : String -> Result String { name : String }
decodedJson jsonStringified =
    Decode.decodeString userDecoder jsonStringified



-- here, we "parse" the result to get the real value of the parsed number


parseJson : Result String { name : String } -> { name : String }
parseJson decoded =
    case decoded of
        Result.Ok val ->
            val

        Result.Err errMessage ->
            { name = "errMessage" }



-- display it in the main


userJakeRecord : { name : String }
userJakeRecord =
    parseJson (decodedJson jsonStringified)


renderName : String
renderName =
    userJakeRecord.name


main : Html msg
main =
    h1 [] [ text renderName ]
