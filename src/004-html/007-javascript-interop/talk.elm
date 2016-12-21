port module MeTalkToJavaScript exposing (..)

import Html.App as App

-- command: send to JavaScript
-- subscription: listen to JavaScript

-- port for sending strings out to JavaScript
port sendTest : String -> Cmd msg

main =
  App.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }
