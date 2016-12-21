module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, hidden)

{-
The main function is the entry of an Elm program.
It takes care of wiring up the Model, View, and Update.
​The runtime is contained in a program that gets initialized with
the model, view, and update – this program is then returned by the main function.

The Html.beginnerProgram encapsulates the basics of The Elm Architecture.
It wires up the model, view, and update functions and provides the setup
for handling user interaction and managing state.

Once initialized ​the program executes a continuous loop, taking in actions
from the user, changing the state and representing the changes in the view.​
-}

main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initialModel -- model will "load" the initial state when program executes
        , view = view -- view will render HTML
        , update = update
        }

-- MODEL

{-
The model part represents the form of your data as well as the actual state.​
You will have at least one type alias that defines your models:
  Most likely this type alias references a record that describes the shape of your data.

The model is the only place where the state of your application resides.
It is a single state tree of immutable data.
Each time this data is transformed by the update function you get a
new model containing the updated state.
-}

type alias Model =
    { blogTitle : String
    , articles : List Article
    }


type alias Article =
    { title : String
    , content : String
    , showContent : Bool
    }


initialModel : Model
initialModel =
    { blogTitle = "Some posts on Elm"
    , articles =
        [ { title = "Learning Elm"
          , content = "I just started to learn functional frontend development with Elm. How cool is that?"
          , showContent = False
          }
        , { title = "The Elm Architecture"
          , content = "In this post I am trying to explain The Elm Architecture …"
          , showContent = False
          }
        ]
    }

-- VIEW

{-
The view is represented by one or many stateless functions.
These functions generate HTML based on the model: ​
  Their input is the model or a part thereof;
  their output is the markup that represents the current state.

Architecture-wise the most important point is, that the view
gives you a declarative way of representing the current state
and accepting user interaction: You register event handlers
that emit messages to the runtime that will trigger update as
seen in the viewArticle function.
-}

view : Model -> Html Msg
view model =
    div
        [ class "blog" ]
        [ h1 [] [ text model.blogTitle ]
        , p [] [ text "Click the titles to read the full article." ]
        , section
            [ class "articles" ]
            (List.map viewArticle model.articles)
        ]


viewArticle : Article -> Html Msg
viewArticle a =
    article
        [ onClick (ToggleContent a) ]
        [ h2 [] [ text a.title ]
        , div
            [ hidden (not a.showContent) ]
            [ text a.content ]
        ]

-- UPDATE
{-
The update function is the only place your model gets transformed.​
It receives a message as well as the model, then updates the model
according to the message and returns it.

Contrast this to applications that manage all of their possible states
implicitly and being changed from several places.
-}

type Msg
    = ToggleContent Article


update : Msg -> Model -> Model
update msg model =
    case msg of
        ToggleContent article ->
            let
              updateArticle a =
                    if a == article then
                        { a | showContent = (not article.showContent) }
                    else
                        a

              updatedArticles =
                  List.map updateArticle model.articles
            in
                { model | articles = updatedArticles }
