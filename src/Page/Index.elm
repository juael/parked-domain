module Page.Index exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    p [ class "text-2xl font-bold" ] [ text "Hello!" ]
