module Population exposing (..)


nbYear : Int -> Float -> Int -> Int -> Int
nbYear p0 percent aug p =
    let
        prcnt =
            1 + percent / 100

        helper pop n =
            if pop < p then
                helper (floor (prcnt * toFloat pop) + aug) (n + 1)

            else
                n
    in
    helper p0 0
