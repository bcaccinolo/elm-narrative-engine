module Components.Storyline exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type Story a
    = Story a String


type alias Storyline a =
    List (Story a)


storyline : Storyline a -> Html msg
storyline storyLine =
    let
        storyItem (Story _ prose) =
            li [ class "Storyline__Prose" ]
                [ text prose ]
    in
        ul [ class "Storyline" ]
            (List.map storyItem storyLine)



-- hardcodedStory =
--     [ li [ class "Storyline__Prose" ] [ text "I really shouldn't leave with old Barrowmore in such a foul mood." ]
--     , li [ class "Storyline__Prose" ] [ text "Barrowmore does deserve a good knock on the head, but that wouldn't be very sporting now, would it?" ]
--     , li [ class "Storyline__Prose" ]
--         [ p [] [ text "\"Barthollowmew Barrowmore, good to see you Sir, on such a splendid day as this!\"" ]
--         , p [] [ text "\"I'm in no mood for chit chat Pinkleton, have you brought it, or haven't you?\"" ]
--         ]
--     , li [ class "Storyline__Prose" ] [ text "Someone is approaching..." ]
--     , li [ class "Storyline__Prose" ] [ text "It is a small marble, from where, who knows." ]
--     , li [ class "Storyline__Prose" ]
--         [ p []
--             [ text "I set out for the marsh by foot." ]
--         , p []
--             [ text "After perhaps an hour, I arrived.  Not a fantastic place for a walk indeed, but just the right thing if a spot of intrigue is what one is after." ]
--         , p []
--             [ text "There appears to be something shinny nestled among those rocks there..."
--             ]
--         ]
--     , li [ class "Storyline__Prose" ] [ text "My trusty brolly, I bring it everywhere." ]
--     , li [ class "Storyline__Prose" ] [ text "It all started this morning over tea in the greenhouse.  I got a message from my friend Barrowmore to meet him in the marsh." ]
--     ]
