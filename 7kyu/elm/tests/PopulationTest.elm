module PopulationTest exposing (suite)

import Expect exposing (Expectation)
import Population exposing (nbYear)
import Test exposing (..)


suite : Test
suite =
    describe "Growth of a Population"
        [ describe "Basic tests"
            [ test "nbYear 1500 5 100 5000" <| \_ -> nbYear 1500 5 100 5000 |> Expect.equal 15
            , test "nbYear 1500000 2.5 10000 2000000" <| \_ -> nbYear 1500000 2.5 10000 2000000 |> Expect.equal 10
            , test "nbYear 1500000 0.25 1000 2000000" <| \_ -> nbYear 1500000 0.25 1000 2000000 |> Expect.equal 94
            , test "nbYear 1500000 0.25 -1000 2000000" <| \_ -> nbYear 1500000 0.25 -1000 2000000 |> Expect.equal 151
            , test "nbYear 1000 0.02 50 1000" <| \_ -> nbYear 1000 0.02 50 1000 |> Expect.equal 0
            , test "nbYear 1500000 0.25 1 2000000" <| \_ -> nbYear 1500000 0.25 1 2000000 |> Expect.equal 116
            , test "nbYear 1500000 0.0 10000 2000000" <| \_ -> nbYear 1500000 0.0 10000 2000000 |> Expect.equal 50
            ]
        ]
