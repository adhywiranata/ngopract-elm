import Html exposing (div, h1, text)
import Html.Attributes exposing (class)

main =
  div []
    [ div []
      [ h1 []
        [ text "text inside a nested div" ]
      ]
    , div []
      [ text "text inside another nested div" ]
    , div [ class "just-a-class-name" ]
      [ text "i'm kinda boring here.." ]
    , div []
      [ div [] [ text "nested nested again~" ] ]
    ]
