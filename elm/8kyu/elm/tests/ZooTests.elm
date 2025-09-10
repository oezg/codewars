module ZooTests exposing (suite)

import Expect exposing (Expectation)
import Test exposing (..)
import Zoo exposing (fixTheMeerkat)


suite : Test
suite =
    describe "Fix the meerkat"
        [ describe "Basic tests"
            [ test "fixTheMeerkat [\"tail\", \"body\", \"head\"]" <|
                \_ -> fixTheMeerkat [ "tail", "body", "head" ] |> Expect.equal [ "head", "body", "tail" ]
            , test "fixTheMeerkat [\"tails\", \"body\", \"heads\"]" <|
                \_ -> fixTheMeerkat [ "tails", "body", "heads" ] |> Expect.equal [ "heads", "body", "tails" ]
            , test "fixTheMeerkat [\"bottom\", \"middle\", \"top\"]" <|
                \_ -> fixTheMeerkat [ "bottom", "middle", "top" ] |> Expect.equal [ "top", "middle", "bottom" ]
            , test "fixTheMeerkat [\"lower legs\", \"torso\", \"upper legs\"]" <|
                \_ -> fixTheMeerkat [ "lower legs", "torso", "upper legs" ] |> Expect.equal [ "upper legs", "torso", "lower legs" ]
            , test "fixTheMeerkat [\"ground\", \"rainbow\", \"sky\"]" <|
                \_ -> fixTheMeerkat [ "ground", "rainbow", "sky" ] |> Expect.equal [ "sky", "rainbow", "ground" ]
            ]
        ]
