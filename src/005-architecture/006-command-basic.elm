-- COMMANDS BASICS
-- commands (Cmd) are how we tell the runtime to execute things that involve side effects

module Main exposing (..)

import Html exposing (Html, div, button, text, program)
import Html.Events exposing (onClick)
import Random

-- MODEL


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 1, Cmd.none )



-- MESSAGES


type Msg
    = Roll
    | OnResult Int



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Roll ] [ text "Roll" ]
        , text (toString model)
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of

        -- command containing a result of a random and call the OnResult with random number
        Roll ->
            ( model, Random.generate OnResult (Random.int 1 6) ) -- Random.generate creates a command that will generate random numbers

        -- OnResult is a side effect function which does not returns the model
        OnResult res ->
            ( res, Cmd.none )


-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = (always Sub.none)
        }
