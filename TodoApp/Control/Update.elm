module TodoApp.Control.Update exposing (..)

import TodoApp.Control.Model exposing (Model)
import TodoApp.Control.Msg as Control exposing (..)
import TodoApp.Msg as Main exposing (..)


update : Main.Msg -> Model -> Model
update msgFor control =
    case msgFor of
        MsgForControl msg ->
            updateControl msg control

        _ ->
            control


updateControl : Control.Msg -> Model -> Model
updateControl msg model =
    case msg of
        ChangeVisibility visibility ->
            { model | visibility = visibility }
