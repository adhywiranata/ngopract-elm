module Main exposing (..)

import Html exposing (..)

import Html.Events exposing (onClick)
import Html.Attributes exposing (id, class)

main : Program Never Model Msg
main =
  Html.beginnerProgram
    { model = initialModel -- model will "load" the initial state when program executes
    , view = view -- view will render HTML
    , update = update
    }

-- MODEL

type alias Model =
  { counter : Int }

initialModel : Model
initialModel = { counter = 0 }

-- VIEW

view : Model -> Html Msg
view model =
  div
    [id "counterContainer"]
    [ h1 [] [ text "Super Simple Counter App" ]
    , h2
      [ id "counter-label" ]
      [ text (toString model.counter)]
    , button
      [ onClick Increment
      , class "btn"
      ]
      [ text "Increase Value" ]
    , button
      [ onClick Decrement
      , class "btn"
      ]
      [ text "Decrease Value" ]
    ]

-- UPDATE

type Msg -- Msg will contain function definitions
    = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment -> -- Increment arrow function: case if msg is Increment
      let
        updatedCounter = model.counter + 1 -- local variable containing updated counter
      in
        { model | counter = updatedCounter } -- return model with updated counter value

    Decrement -> -- Decrement arrow function: case if msg is Decrement
      let
        updatedCounter = model.counter - 1 -- local variable containing updated counter
      in
        { model | counter = updatedCounter } -- return model with updated counter value
