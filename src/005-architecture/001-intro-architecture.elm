module App exposing (..)

import Html exposing (Html, div, text, program)


-- MODEL
-- Definition: a single state tree
-- we compose all components models into a single state tree
type alias Model =
    String

-- initialize model and Command
-- Definition: Html.program expects a tuple with (model, command)
init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )

-- MESSAGES
-- Definition: Messages are things that happen in our applications that our component responds to
-- define Msg containing NoOp function
type Msg
    = NoOp

-- VIEW
-- Definition: display the HTML components as virtual DOM
view : Model -> Html Msg
view model =
    div []
        [ text model ]

-- UPDATE
-- Definition: functions which will be called by Html.program each time a message is received
-- these functions will return a new model (state) and the command to perform.
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- return current state and command. This function actually do nothing!
        NoOp ->
            ( model, Cmd.none )

-- SUBSCRIPTIONS
-- Definition: subscriptions is made to listen for external input to our application
subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

-- MAIN
-- Html.program wires everything together and returns an html element to render.
-- program takes init, view, update and subscriptions.
main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
