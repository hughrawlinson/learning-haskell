# Higher Order Functions
Functions can *be* parameters and return types. You can pass functions around, like in Javascript.

## Curried Functions
* Functions in Haskell only actually take one parameter - functions that "appear" to have multiple parameters actually are multiple functions applied one after the other.
* A "curried" function is a function whose evaluation has been "translated" from a function that accepts multiple parameters into a sequence of functions that just take one parameter.
* That's why type signatures don't differentiate particularly between parameters and return values.
* `max 4 5` is the same as `(max 4) 5`. This is because `max 4` returns a function to which `5` is subsequently applied.
* Therefore, the type signatures `max :: (Ord a) => a -> a -> a` is equivalent to `max :: (Ord a) => a -> (a -> a)`.
* This opens up the possibility of partial application.
* Partial Application is when you give a function too few arguments, so that you can pass it (partially applied) somewhere else to be used, or assign it it's own function name.
* Infix functions can be partially applied using "sections"
 * `10 / 5` is the same as `(/5) 10`

## Some higher-orderism is in order

## Maps and filters

## Lambdas

## Only folds and horses

## Function application with $

## Function composition


