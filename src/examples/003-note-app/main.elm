module Main exposing (..)

import Html exposing (..)

import Html.Events exposing (onSubmit, onClick, onInput)
import Html.Attributes exposing (..)

main : Program Never Model Msg
main =
  Html.beginnerProgram
    { model = initialModel -- model will "load" the initial state when program executes
    , view = view -- view will render HTML
    , update = update
    }

-- MODEL

type alias Model =
  { notes : List Note
  , addFormTitle : String
  , addFormContent : String
  }

type alias Note =
  { title : String
  , content : String
  }

initialModel : Model
initialModel =
  { notes =
    [ { title = "Test Note 101"
      , content = "Lorem Ipsum Dolor"
      }
    , { title = "A Note 202"
      , content = "Lorem Ipsum Doloreesa"
      }
    , { title = "Blue Birdies"
      , content = "Black Bird Blue Bird"
      }
    ]
  , addFormTitle = ""
  , addFormContent = ""
  }

-- VIEW

view : Model -> Html Msg
view model =
  div
  [ id "app"]
  [ h1 [] [ text "Note App" ]
  , div
    []
    [ Html.form
      [ onSubmit AddNote ]
      [ input
        [ type_ "text"
        , name "title"
        , value model.addFormTitle
        , onInput ChangeFormNoteTitle
        , placeholder "Note Title"
        ]
        []
      , textarea
        [ name "content"
        , onInput ChangeFormNoteContent
        , placeholder "Contents" ]
        [ text model.addFormContent ]
      , input [ type_ "submit", value "Add New Note" ] []
      ]
    ]
  , h2 [] [ text "Add a New Note" ]
  , h2 [] [ text "Notes" ]
  , div
    [ id "notes"]
    [ div
      []
      (List.map viewNote model.notes)
    ]
  ]

viewNote : Note -> Html Msg
viewNote note =
  div
    []
    [ h2 [] [text note.title]
    , p [] [text note.content]
    ]

-- UPDATE

type Msg =
  ChangeFormNoteTitle String
  | ChangeFormNoteContent String
  | AddNote

update : Msg -> Model -> Model
update msg model =
  case msg of
    -- change note title state in the add Form
    ChangeFormNoteTitle newTitle ->
      { model | addFormTitle = newTitle }

    -- change note content state in the add Form
    ChangeFormNoteContent newContent ->
      { model | addFormContent = newContent }

    -- save and append a new Note to Note List
    AddNote ->
      let
        updatedNotes =
          (++)
          model.notes
          [ { title = model.addFormTitle
            , content = model.addFormContent
            }
          ]
      in
        { model | notes = updatedNotes, addFormTitle = "", addFormContent = "" }
