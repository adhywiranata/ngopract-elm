module AnonymousFunction exposing (..)

import Html exposing (text)

-- define a number1 variable which have add1 return value as its own value
-- notice the ""\" <- symbol. this is how anonymous function in elm is declared
numberSum =
  (\x y -> x + y) 2 3
-- main shows the index html page
main =
    text (toString numberSum) -- toString converts an Int to String
