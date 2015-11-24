module Empty
  ( Empty (..)
  , elim
  , yeahRight
  ) where

{-| Just a simple empty type.

# Types
@docs Empty

# Elimination
@docs elim, yeahRight
-}


{-| It's impossible to construct a value of type `Empty`, because to do
    so, you'd already need a value of type `Empty`!
    
    This type is useful for witnessing the impossibility of certain things.
    For example, you could have a function which took a value of type
    `Task Empty Int` which, the first type parameter to `Task` being the type
    of errors encountered by the task, means it's impossible for that task to
    fail. What a world we live in, eh? -}
type Empty = Empty Empty

{-| If `Empty` is inhabited then anything is. -}
elim : Empty -> a
elim (Empty e) = elim e

{-| A synonym for `elim`. -}
yeahRight : Empty -> a
yeahRight = elim

type BertrandRusselIsThePope
    = BertrandRusselIsThePope BertrandRusselIsThePope

thenBertrandRusselIsThePope : Empty -> BertrandRusselIsThePope
thenBertrandRusselIsThePope = elim
