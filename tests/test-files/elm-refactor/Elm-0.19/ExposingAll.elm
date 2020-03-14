module ExposingAdd exposing (directReference)

import A exposing (..)


directReference =
    a1


hiddenByTopLevelParams a1 =
    a1


hiddenByLetDeclarationParams =
    let
        let1 a1 =
            a1
    in
    ()


hiddenBy_patterns =
    let
        byVar a1 =
            a1

        byData (Just a1) =
            a1

        byTuple ( a1, z ) =
            a1

        byList [ a1 ] =
            a1

        byCons (a1 :: a2) =
            ( a1, a2 )

        byRecord { a1 } =
            a1

        byAlias ((Just a1) as a2) =
            ( a1, a2 )
    in
    ()


hiddenByLetDefinition =
    let
        a1 =
            []

        z =
            a1

        ( a2, y ) =
            ( 1, 2 )
    in
    ( a1, a2 )


hiddenByLambdaParams =
    \a1 -> a1


hiddenByCaseBranchPattern =
    case Nothing of
        Just a1 ->
            Just a1

        a1 ->
            a1


a9 =
    ()


( a8, _ ) =
    ( (), () )


hiddenByDefinition =
    ( a8, a9 )


directTypeReference : A1 -> ()
directTypeReference _ =
    ()


type A9
    = A9_1


typeHiddenByDefinition : A9 -> ()
typeHiddenByDefinition _ =
    ()
