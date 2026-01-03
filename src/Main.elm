module Main exposing (Flags, Model, Msg, main)

import Browser
import Html exposing (Html, button, div, h1, p, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


type alias Flags =
    { sessionId : Maybe String
    , version : String
    }


type alias Model =
    { flags : Flags }


type Msg
    = NoOp


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { flags = flags }, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


view : Model -> Html Msg
view model =
    div [ class "min-h-screen bg-white text-slate-900 flex items-center justify-center p-8" ]
        [ div [ class "max-w-xl w-full space-y-3" ]
            [ h1 [ class "text-3xl font-semibold tracking-tight" ] [ text "Parked Domain" ]
            , p [ class "text-slate-600" ] [ text ("Version: " ++ model.flags.version) ]
            , p [ class "text-slate-600" ]
                [ text
                    ("Session: "
                        ++ (case model.flags.sessionId of
                                Nothing ->
                                    "(none)"

                                Just s ->
                                    s
                           )
                    )
                ]
            , button
                [ class "mt-4 inline-flex items-center justify-center rounded-md border border-slate-200 px-3 py-2 text-sm font-medium text-slate-900 hover:bg-slate-50"
                , onClick NoOp
                ]
                [ text "No-op button" ]
            ]
        ]
