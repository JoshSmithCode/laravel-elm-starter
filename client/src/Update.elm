module Update exposing (..)

import Msg exposing (Msg (..))
import Model exposing (Model)

import Page exposing (Page)
import Route exposing (Route)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =

    case msg of

        SetRoute maybeRoute ->

            setRoute maybeRoute model

        DoStuff ->

            model ! []


setRoute : Maybe Route -> Model -> (Model, Cmd Msg)
setRoute maybeRoute model =

    case maybeRoute of
        Nothing ->
            { model | activePage = Page.NotFound } ! []

        Just Route.Home ->
            { model | activePage = Page.Home } ! []