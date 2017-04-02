module Main exposing (..)

import Html exposing (Html, div, ul, li, h1, text)
import Html.Attributes exposing (class)
import Json.Decode as Decode


-- here is a stringified json


jsonStringified : String
jsonStringified =
    """[
        {
          "name": "Jake",
          "age": 25,
          "address": "good street 25",
          "accountVerified": true
        },
        {
          "name": "Luke",
          "age": 30,
          "address": "good street 35",
          "accountVerified": false
        },
        {
          "name": "Mikey",
          "age": 18,
          "address": "nice street 35",
          "accountVerified": true
        }
      ]"""


type alias UserRecord =
    { name : String
    , age : Int
    , address : String
    , accountVerified : Bool
    }


type alias Users =
    List UserRecord


usersDecoderResultParser : Result String Users -> Users
usersDecoderResultParser result =
    let
        parsedList =
            case result of
                Result.Ok userList ->
                    userList

                Result.Err userList ->
                    []
    in
        parsedList


usersDecoder : String -> Users
usersDecoder jsonStringified =
    let
        decodedList =
            Decode.decodeString (Decode.list userObjectDecoder) jsonStringified
    in
        usersDecoderResultParser decodedList


userObjectDecoder : Decode.Decoder UserRecord
userObjectDecoder =
    Decode.map4 UserRecord
        (Decode.at [ "name" ] Decode.string)
        (Decode.at [ "age" ] Decode.int)
        (Decode.at [ "address" ] Decode.string)
        (Decode.at [ "accountVerified" ] Decode.bool)


usersCleanRecord : Users
usersCleanRecord =
    usersDecoder jsonStringified


renderUser : UserRecord -> Html msg
renderUser userItem =
    div [ class "user-item" ]
        [ ul []
            [ li [] [ text ("Name: " ++ userItem.name) ]
            , li [] [ text ("Age: " ++ toString (userItem.age)) ]
            , li [] [ text ("Address: " ++ userItem.address) ]
            , li [] [ text ("is Verified: " ++ toString (userItem.accountVerified)) ]
            ]
        ]


renderUsersList : Users -> Html msg
renderUsersList userList =
    let
        userListItems =
            List.map (renderUser) userList
    in
        div [ class "user-list-items" ] userListItems


main : Html msg
main =
    div []
        [ h1 []
            [ text "Decoding Array of Object" ]
        , div [] [ renderUsersList usersCleanRecord ]
        ]
