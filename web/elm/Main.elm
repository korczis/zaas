module Main exposing (..)

-- Library Imports
import Navigation
import TimeTravel.Navigation as TimeTravel

-- Local Imports
import Component.Application.Init
import Component.Application.Msg as Msg
import Component.Application.Update
import Component.Application.View
import Component.Application.Subscription
import Route

programWithFlags =
    Navigation.programWithFlags

main =
    programWithFlags (Route.fromLocation >> Msg.SetRoute)
        { init = Component.Application.Init.init
        , view = Component.Application.View.view
        , update = Component.Application.Update.update
        , subscriptions = Component.Application.Subscription.subscriptions
        }
