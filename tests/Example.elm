module Example exposing (suite)

import Expect
import Test exposing (..)


suite : Test
suite =
    test "sanity check" <|
        \_ ->
            Expect.equal 1 1
