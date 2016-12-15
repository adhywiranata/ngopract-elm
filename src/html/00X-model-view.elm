import Html exposing (..)

main =
  Html.beginnerProgram { model = model, view = view }

-- MODEL

type alias Model = Int

model : Model
model =
  0

-- VIEW

view : Model -> Html Msg
view model =
  Html.div []
    [ Html.h1 []
        [ Html.text "Just another Heading, Using MVC" ]
    , Html.h2 []
        [ Html.text (toString model) ]
    ]
