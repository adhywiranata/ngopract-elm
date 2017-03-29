import Html exposing (div, h1, text)
import Html.Attributes exposing (style)

main =
  div
    [ style
      [ ("backgroundColor", "aquamarine")
      , ("padding", "30px")
      ]
    ]
    [ h1
      [ style
          [ ("backgroundColor", "teal")
          , ("padding", "20px")
          , ("margin", "10px")
          , ("color", "white")
          , ("fontFamily", "arial")
          , ("fontSize", "30px")
          ]
      ]
      [ text "this is just a styled text" ]
    ]
