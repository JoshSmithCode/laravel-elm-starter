module Main exposing (main)

import Html exposing (..)
import Json.Decode as Decode exposing (Value)
import Navigation exposing (Location)
import Task

import Model exposing (Model)
import Msg exposing (Msg)
import Page exposing (Page)
import Route exposing (Route)
import Update exposing (update, setRoute)


init : Value -> Location -> ( Model, Cmd Msg )
init val location =
    setRoute (Route.fromLocation location)
        { activePage = Page.Home
        }


view : Model -> Html Msg
view model =
    case model.activePage of
        Page.Home ->
            div
                []
                [ text "HOME" ]

        Page.NotFound ->
            div
                []
                [ text "OOPS" ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [
        ]


main : Program Value Model Msg
main =
    Navigation.programWithFlags (Route.fromLocation >> Msg.SetRoute)
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }