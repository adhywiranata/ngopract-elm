import Html exposing (div, text, button, classList)
import Html.Events exposing (onClick)
import Html.Attributes exposing (classList)

main =
  div []
    [
      button
      [ classList
        [ ("btn")
        , ("btn-me")
        ]
      ]
      [ text "Click Me" ]
    ]
