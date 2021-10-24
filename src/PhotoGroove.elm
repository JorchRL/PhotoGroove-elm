module PhotoGroove exposing (main)

--encapsulation!

import Html exposing (..)
import Html.Attributes exposing (..)


urlPrefix =
    "http://elm-in-action.com/"



--A "view" function, which takes a "model" as input and produces HTML as outpu


view model =
    div [ class "content" ]
        [ h1 [] [ text "PhotoGroove" ]
        , div [ id "thumbnails" ]
            (List.map (\photo -> viewThumnail model.selectedUrl photo) model.photos)
        ]


viewThumnail selectedUrl thumb =
    img [ src (urlPrefix ++ thumb.url), classList [ ( "selected", selectedUrl == thumb.url ) ] ] []



--Model


initialModel =
    { photos =
        [ { url = "1.jpeg" }
        , { url = "2.jpeg" }
        , { url = "3.jpeg" }
        ]
    , selectedUrl = "1.jpeg"
    }


main =
    view initialModel
