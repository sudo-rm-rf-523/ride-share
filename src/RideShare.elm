module RideShare exposing (..)

import Html exposing (..)
import Html.App exposing (program)
import Html.Events exposing (onClick)

type alias Model = String

initModel : Model
initModel = "RideShare"

init : ( Model, Cmd Msg )
init =
  ( initModel, Cmd.none )

type Msg =
  EmptyMessage

view : Model -> Html Msg
view title =
  div
  []
  [
    h1
    []
    [
      text ( "Welcome to: " ++ title )
    ]
  ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    EmptyMessage ->
         ( model, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model = Sub.none

main : Program Never
main =
      program
      {
        init = init ,
        view = view ,
        update = update ,
        subscriptions = subscriptions
      }
