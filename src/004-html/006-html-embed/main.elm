module Main exposing (..)

import Html exposing (text, h1)

aText : String
aText = "This is compiled from Elm"

main =
  h1 [] [text aText]

-- compile this file from elm into js using:
-- elm-make src/004-html/006-html-embed/main.elm --output=src/004-html/006-html-embed/main.js
