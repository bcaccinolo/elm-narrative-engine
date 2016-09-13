module Story.Element exposing (..)

import Color exposing (..)


type Element a b c
    = Item a
    | Location b
    | Character c


type alias Elements a b c =
    { items : a -> ItemInfo
    , locations : b -> LocationInfo
    , characters : c -> CharacterInfo
    }


type alias BasicInfo =
    { name : String
    , description : String
    }


type alias WithColor a =
    { a | color : Color }


type alias ItemInfo =
    BasicInfo


type alias LocationInfo =
    WithColor BasicInfo


type alias CharacterInfo =
    BasicInfo


item : a -> Element a b c
item =
    Item


location : b -> Element a b c
location =
    Location


character : c -> Element a b c
character =
    Character


itemInfo : String -> String -> ItemInfo
itemInfo name description =
    { name = name
    , description = description
    }


locationInfo : String -> Color -> String -> LocationInfo
locationInfo name color description =
    { name = name
    , description = description
    , color = color
    }


characterInfo : String -> String -> CharacterInfo
characterInfo name description =
    { name = name
    , description = description
    }