module AlphabeticalAdditionTest exposing (..)

import AlphabeticalAddition exposing (addLetters)
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "Alphabetical Addition"
        [ describe "Basic tests"
            [ test "Testing for ['a', 'b', 'c']" <| \_ -> addLetters [ 'a', 'b', 'c' ] |> Expect.equal 'f'
            , test "Testing for ['z']" <| \_ -> addLetters [ 'z' ] |> Expect.equal 'z'
            , test "Testing for ['a', 'b']" <| \_ -> addLetters [ 'a', 'b' ] |> Expect.equal 'c'
            , test "Testing for ['c']" <| \_ -> addLetters [ 'c' ] |> Expect.equal 'c'
            , test "Testing for ['z', 'a']" <| \_ -> addLetters [ 'z', 'a' ] |> Expect.equal 'a'
            , test "Testing for ['y', 'c', 'b']" <| \_ -> addLetters [ 'y', 'c', 'b' ] |> Expect.equal 'd'
            , test "Testing for []" <| \_ -> addLetters [] |> Expect.equal 'z'
            ]
        ]
