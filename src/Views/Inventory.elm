module Views.Inventory exposing (..)

import Html exposing (..)
import Html.Keyed
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Story.Element exposing (..)


inventory : (a -> msg) -> (a -> ItemInfo) -> List a -> (Element a b c -> Bool) -> Html msg
inventory msg itemsInfo items beenThereDoneThat =
    let
        numItems =
            List.length items

        inventoryItem i item =
            let
                key =
                    (toString item) ++ (toString <| numItems - i)

                classes =
                    [ ( "Inventory__Item u-selectable", True )
                    , ( "u-jump", not <| beenThereDoneThat (Item item) )
                    , ( "u-new-story-element", not <| beenThereDoneThat (Item item) )
                    ]
            in
                ( key
                , li
                    [ classList classes
                    , onClick <| msg item
                    ]
                    [ text <| .name <| itemsInfo item ]
                )
    in
        div [ class "Inventory" ]
            [ h3 [] [ text "Inventory" ]
            , div [ class "Inventory__list" ]
                [ Html.Keyed.ol []
                    (List.indexedMap inventoryItem items)
                ]
            ]