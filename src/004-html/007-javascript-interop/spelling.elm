port module Spelling exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String


main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


-- MODEL

-- Make an alias of Model
type alias Model =
  { word : String
  , suggestions : List String
  }

-- Initialize the program state which contains Model and Cmd Msg as Tuple
-- init will run during at program's execution
init : (Model, Cmd Msg)
init =
  (Model "" [], Cmd.none)


-- UPDATE

type Msg
  = Change String
  | Check
  | Suggest (List String)


port check : String -> Cmd msg

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of

    -- Return an updated model with sent word String state, with none Command
    Change newWord ->
      ( Model newWord [], Cmd.none )

    -- Return the same model with model.word as a Command
    Check ->
      ( model, check model.word )

    -- Return an updated model with sent word String state and List of Suggestions state, with none Command
    Suggest newSuggestions ->
      ( Model model.word newSuggestions, Cmd.none )


-- SUBSCRIPTIONS

port suggestions : (List String -> msg) -> Sub msg

subscriptions : Model -> Sub Msg
subscriptions model =
  suggestions Suggest


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ input [ onInput Change, placeholder "Input Word Here..." ] []
    , button [ onClick Check ] [ text "Check" ]
    , div [] [ text (String.join ", " model.suggestions) ]
    ]
