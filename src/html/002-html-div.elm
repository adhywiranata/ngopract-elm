import Html exposing (div, text, h1)

main =
  div []
    [ div []
      [ h1 []
        [ text "text inside a nested div" ]
      ]
    , div []
      [ text "text inside another nested div" ]
    , div []
      [ text "i'm kinda boring here.." ]
    , div []
      [ div [] [ text "nested nested again~" ] ]
    ]
