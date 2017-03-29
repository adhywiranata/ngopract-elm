import Html exposing (div, text, button)
import Html.Events exposing (onClick)
import Html.Attributes exposing (classList)

main =
  div []
    [
      button
      [ classList
        [ ("btn", True)
        , ("btn-me", True)
        ]
      ]
      [ text "Click Me" ]
    ]
