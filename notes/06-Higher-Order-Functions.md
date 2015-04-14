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
* You can pass functions as parameters into other functions
 * Remember to use parens in type signatures as otherwise everything is right associative.
  * Except when you're using infix operators
   * Except on the third Tuesday in November
    * You don't have to use parens when a function is returning a function be 
* Functions can return other functions (for partial application and other purposes)
* Functions are "things" of type
## Maps and filters
* Map is pretty simple, it runs through a list applying a function to each of the values, and returns the resulting list.
* Filter filters your list using a predicate function (a -> Bool)
* takeWhile runs through a list until your function returns false, then stops.

## Lambdas
* Anonymous functions. Hooray.
* Specified like `(\x -> x ++ "!")` or whatever
* Used where you only want a function once.
* Arguments in lambdas can do pattern matching, i.e. `(\[x:xs] -> x : xs)` (super useful function for useful functioning.

## Only folds and horses
* Folds are for dealing with the 'edge case' pattern in recursive functions.
* They're like map, except that they reduce the list into a single value.
* `foldl` folds the list from the left side. `foldr` folds the list from the right side.
* `foldl` takes a function that takes two arguments, an 'accumulator' (not official name?) and a value for the current position in the list.
* Implementing `sum` with `foldl` would look something like...
 * `foldl (\acc x -> acc + x) 0 [0..100]`



## Function application with $

## Function composition


