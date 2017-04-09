module Main exposing (..)

import Html exposing (Html, div, li, text, h1, ul)
import Html.Attributes exposing (class, id)


main : Html msg
main =
    div [ id "container" ]
        [ h1 [] [ text "Todo List Sederhana dengan Elm" ]
        , ul [ class "todo-list" ]
            [ li [] [ text "Belajar Elm" ]
            , li [] [ text "Meeting dengan Budi" ]
            , li [] [ text "Renovasi Rumah" ]
            , li [] [ text "Service Mobil" ]
            ]
        ]
