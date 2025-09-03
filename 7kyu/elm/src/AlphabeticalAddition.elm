module AlphabeticalAddition exposing (..)

import Dict
import List exposing (indexedMap)


alphabet : List Char
alphabet =
    List.range (Char.toCode 'a') (Char.toCode 'y') |> List.map Char.fromCode |> (::) 'z'


i2a : Dict.Dict Int Char
i2a =
    alphabet |> indexedMap Tuple.pair |> Dict.fromList


a2i : Dict.Dict Char Int
a2i =
    alphabet |> indexedMap (\i c -> ( c, i )) |> Dict.fromList


validate : String -> List Char
validate s =
    String.toList s |> List.filter Char.isLower


addLetters : List Char -> Char
addLetters letters =
    List.foldr nextState 'z' letters


nextState letter state =
    Dict.get letter a2i
        |> Maybe.andThen (\i -> Maybe.andThen (\j -> Dict.get (i + j |> modBy 26) i2a) (Dict.get state a2i))
        |> Maybe.withDefault 'z'
