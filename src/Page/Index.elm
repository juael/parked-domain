module Page.Index exposing (view)

import Html exposing (Html, a, div, em, h1, main_, p, span, text)
import Html.Attributes exposing (class, href, rel, target)


view : Html msg
view =
    main_ [ class "page" ]
        [ div [ class "container" ]
            [ div [ class "stack" ]
                [ h1 [ class "headline" ]
                    [ text "This domain is destined for "
                    , em [ class "headline-em" ] [ text "something great" ]
                    , text ". "
                    , text "If you're seeing this page, maybe it's "
                    , em [ class "highlight-em" ] [ text "your something" ]
                    , text "."
                    ]
                ]
            , div [ class "copy" ]
                [ p []
                    [ text "Hello, my name is Julian. If you're interested in this domain, message me on "
                    , a
                        [ href "https://www.linkedin.com/in/julian-dawson/"
                        , target "_blank"
                        , rel "noopener noreferrer"
                        , class "link"
                        ]
                        [ text "LinkedIn" ]
                    , text " or email "
                    , a
                        [ href "mailto:hello@juliandawson.co.uk"
                        , class "link"
                        ]
                        [ text "hello@juliandawson.co.uk" ]
                    , text "."
                    ]
                ]
            ]
        ]
