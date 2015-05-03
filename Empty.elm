module Empty where

{-| Just a simple empty type.

# Types
@docs Empty

# Elimination
@docs elim, yeahRight
-}


type Empty = Empty Empty

{-| If `Empty` is inhabited then anything is. -}
elim : Empty -> a
elim (Empty e) = elim e

{-| A synonym for `elim`. -}
yeahRight : Empty -> a
yeahRight = elim

type BertrandRusselIsThePope = BertrandRusselIsThePope BertrandRusselIsThePope
thenBertrandRusselIsThePope : Empty -> BertrandRusselIsThePope
thenBertrandRusselIsThePope = elim
