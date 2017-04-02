module Main exposing (..)

import Html exposing (Html, span, div, ul, ol, li, h1, text)
import Json.Decode as Decode


-- here is a stringified json


jsonStringified : String
jsonStringified =
    """{
      "name": "Jake",
      "age": 25,
      "address": "good street 25",
      "hobbies": ["gaming", "sleeping", "playing"],
      "accountVerified": true
      }"""


type alias UserRecord =
    { name : String
    , age : Int
    , address : String
    , hobbies : List String
    , accountVerified : Bool
    }



-- setup a decoder to decode JSON object to Record


userDecoder : Decode.Decoder UserRecord
userDecoder =
    Decode.map5 UserRecord
        (Decode.at [ "name" ] Decode.string)
        (Decode.at [ "age" ] Decode.int)
        (Decode.at [ "address" ] Decode.string)
        (Decode.at [ "hobbies" ] (Decode.list Decode.string))
        (Decode.at [ "accountVerified" ] Decode.bool)



-- decode json using a previously set decoder


decodedJson : String -> Result String UserRecord
decodedJson jsonStringified =
    Decode.decodeString userDecoder jsonStringified



-- here, we "parse" the result to get the real value of the parsed number


parseJson : Result String UserRecord -> UserRecord
parseJson decoded =
    case decoded of
        Result.Ok userRecord ->
            userRecord

        Result.Err errMessage ->
            { name = "errMessage", age = 0, address = "err", hobbies = [], accountVerified = False }



-- display it in the main


userJakeRecord : UserRecord
userJakeRecord =
    parseJson (decodedJson jsonStringified)


renderHobbies : List String -> Html msg
renderHobbies hobbiesList =
    let
        hobbiesElem =
            List.map (\hobby -> li [] [ text hobby ]) hobbiesList
    in
        ol [] hobbiesElem


main : Html msg
main =
    div []
        [ h1 []
            [ text "Decoding Single Object" ]
        , ul
            []
            [ li [] [ text ("Name: " ++ userJakeRecord.name) ]
            , li [] [ text ("Age: " ++ toString (userJakeRecord.age)) ]
            , li [] [ text ("Address: " ++ userJakeRecord.address) ]
            , li []
                [ div []
                    [ span [] [ text "hobbies:" ]
                    , renderHobbies (userJakeRecord.hobbies)
                    ]
                ]
            , li [] [ text ("is Verified: " ++ toString (userJakeRecord.accountVerified)) ]
            ]
        ]
