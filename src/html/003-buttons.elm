import Html exposing (div, text, button)
import Html.Events exposing (onClick)

main =
  div []
    [
      button [ onClick DoConsoleLog ] [ text "Click Me" ]
    ]
